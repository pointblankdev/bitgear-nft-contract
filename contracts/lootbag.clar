;; nft-trait dependency contract
;; https://explorer.stacks.co/txid/0x80eb693e5e2a9928094792080b7f6d69d66ea9cc881bc465e8d9c5c621bd4d07?chain=mainnet

;; (impl-trait 'SP2PABAF9FTAJYNFZH93XENAJ8FVY99RRM50D2JG9.nft-trait.nft-trait)
;; (impl-trait .nft-trait.nft-trait)

;; DEFINITIONS
(define-non-fungible-token bitgear uint)
(define-constant ERR-NOT-AUTHORIZED u401)
(define-constant ERR-ALL-MINTED u101)
(define-constant CONTRACT-OWNER tx-sender)

(define-data-var loot-bags-total uint u100)
(define-data-var loot-bags-opened uint u0)

(define-data-var gear-remaining uint u100)

(define-data-var loot-bag-index uint u0)
(define-data-var token-uri (string-ascii 80) "https://gateway.pinata.cloud/ipfs/QmPRKqFGK645f95sF7A1hNeWutRR9Lj72WwaYC1Ss4LvJE")
(define-data-var last-id uint u0)

;; (define-constant BINDLE u1)
;; (define-constant BACKPACK u2)
;; (define-constant LOOTBAG u3)
;; (define-constant CHEST u4)

(define-data-var cost-per-mint uint u200000)
(define-data-var creator-address principal 'ST2D5BGGJ956A635JG7CJQ59FTRFRB08934NHKJ95)

(define-data-var token-ids (list 100 uint)
    (list
        u0 u1 u2 u3 u4 u5 u6 u7 u8 u9
        u10 u11 u12 u13 u14 u15 u16 u17 u18 u19
        u20 u21 u22 u23 u24 u25 u26 u27 u28 u29
        u30 u31 u32 u33 u34 u35 u36 u37 u38 u39
        u40 u41 u42 u43 u44 u45 u46 u47 u48 u49
        u50 u51 u52 u53 u54 u55 u56 u57 u58 u59
        u60 u61 u62 u63 u64 u65 u66 u67 u68 u69
        u70 u71 u72 u73 u74 u75 u76 u77 u78 u79
        u80 u81 u82 u83 u84 u85 u86 u87 u88 u89
        u90 u91 u92 u93 u94 u95 u96 u97 u98 u99
    )
)

(define-constant BUFF_TO_BYTE (list
    0x00 0x01 0x02 0x03 0x04 0x05 0x06 0x07 0x08 0x09 0x0a 0x0b 0x0c 0x0d 0x0e 0x0f
    0x10 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f 
    0x20 0x21 0x22 0x23 0x24 0x25 0x26 0x27 0x28 0x29 0x2a 0x2b 0x2c 0x2d 0x2e 0x2f
    0x30 0x31 0x32 0x33 0x34 0x35 0x36 0x37 0x38 0x39 0x3a 0x3b 0x3c 0x3d 0x3e 0x3f
    0x40 0x41 0x42 0x43 0x44 0x45 0x46 0x47 0x48 0x49 0x4a 0x4b 0x4c 0x4d 0x4e 0x4f
    0x50 0x51 0x52 0x53 0x54 0x55 0x56 0x57 0x58 0x59 0x5a 0x5b 0x5c 0x5d 0x5e 0x5f 
    0x60 0x61 0x62 0x63 0x64 0x65 0x66 0x67 0x68 0x69 0x6a 0x6b 0x6c 0x6d 0x6e 0x6f
    0x70 0x71 0x72 0x73 0x74 0x75 0x76 0x77 0x78 0x79 0x7a 0x7b 0x7c 0x7d 0x7e 0x7f
    0x80 0x81 0x82 0x83 0x84 0x85 0x86 0x87 0x88 0x89 0x8a 0x8b 0x8c 0x8d 0x8e 0x8f
    0x90 0x91 0x92 0x93 0x94 0x95 0x96 0x97 0x98 0x99 0x9a 0x9b 0x9c 0x9d 0x9e 0x9f
    0xa0 0xa1 0xa2 0xa3 0xa4 0xa5 0xa6 0xa7 0xa8 0xa9 0xaa 0xab 0xac 0xad 0xae 0xaf
    0xb0 0xb1 0xb2 0xb3 0xb4 0xb5 0xb6 0xb7 0xb8 0xb9 0xba 0xbb 0xbc 0xbd 0xbe 0xbf 
    0xc0 0xc1 0xc2 0xc3 0xc4 0xc5 0xc6 0xc7 0xc8 0xc9 0xca 0xcb 0xcc 0xcd 0xce 0xcf 
    0xd0 0xd1 0xd2 0xd3 0xd4 0xd5 0xd6 0xd7 0xd8 0xd9 0xda 0xdb 0xdc 0xdd 0xde 0xdf 
    0xe0 0xe1 0xe2 0xe3 0xe4 0xe5 0xe6 0xe7 0xe8 0xe9 0xea 0xeb 0xec 0xed 0xee 0xef
    0xf0 0xf1 0xf2 0xf3 0xf4 0xf5 0xf6 0xf7 0xf8 0xf9 0xfa 0xfb 0xfc 0xfd 0xfe 0xff
  )
)



;; FUNCTIONS

(define-private (get-random-token-id)
    (let (
        ;; we can chose any between u0 and u31, because they 
        ;; are all random and we only need numbers under 255
        ;; for larger numbers, we'll look at other exercices
        (index (get-chosen-index u0))
        (tokens (var-get token-ids))
        (chosen-token-id (unwrap-panic (element-at tokens index)))
      )
        ;; substract from the number of choices
        (var-set gear-remaining (- (var-get gear-remaining) u1))
        ;; set the chose id for the filter function
        (var-set last-id chosen-token-id)
        ;; remove the chosen-id from the list of available token-ids
        (var-set token-ids
            (unwrap-panic
                (as-max-len?
                    (filter is-token-id tokens)
                    u100
                )
            )
        )
        (ok chosen-token-id)
    )
)

(define-private (is-owner (index uint) (user principal))
  (is-eq user (unwrap! (nft-get-owner? bitgear index) false))
)

(define-private (open-loot-bag)
  (let (
    (random-gear-index (unwrap-panic (get-random-token-id)))
  )
  (try! (nft-mint? bitgear random-gear-index tx-sender))
  (var-set loot-bags-opened (+ (var-get loot-bags-opened) u1))
  (ok true)
  )
)

(define-public (mint)
  (
    let (
      (opened (var-get loot-bags-opened))
      (total (var-get loot-bags-total))
    )
    (asserts! (<= opened total) (err ERR-ALL-MINTED))
    (try! 
      (match
        (stx-transfer? (var-get cost-per-mint) tx-sender (as-contract tx-sender))
          success (begin (open-loot-bag))
          error (err error)
      )
    )
    (ok true)
  )
)

(define-public (burn (index uint))
  (if (is-owner index tx-sender)
    (match (nft-burn? bitgear index tx-sender)
      success (ok true)
      error (err error)
    )
    (err ERR-NOT-AUTHORIZED)
  )
)

(define-public (transfer (index uint) (owner principal) (recipient principal))
  (if (and (is-owner index owner) (is-owner index tx-sender))
    (match (nft-transfer? bitgear index owner recipient)
      success (ok true)
      error (err error)
    )
    (err ERR-NOT-AUTHORIZED)
  )
)

(define-read-only (tokens-remaining)
  (print (var-get token-ids))
)

(define-read-only (get-vrf)
    (unwrap-panic
        (get-block-info? vrf-seed (- block-height u1))
    )
)

(define-read-only (get-byte-at (index uint))
    (unwrap-panic
        (element-at (get-vrf) index)
    )
)

(define-read-only (get-uint-at (index uint))
    (unwrap-panic 
        (index-of BUFF_TO_BYTE (get-byte-at index))
    )
)

(define-read-only (get-chosen-index (index uint))
    ;; get value between 0 and remaining amount
    u0
    ;; (mod (get-uint-at index) (var-get gear-remaining))
)

(define-private (is-token-id (last-val uint))
    (not (is-eq last-val (var-get last-id)))
)

(define-read-only (get-random-val-at (pos uint))
    (let ((seed (sha512 (unwrap-panic (get-block-info? vrf-seed (- block-height u1))))))
        (unwrap-panic (index-of BUFF_TO_BYTE (unwrap-panic (element-at seed pos))))
    )
)

(define-read-only (get-last-token-id)
  (ok (var-get loot-bags-opened))
)

(define-public (set-cost-per-mint (value uint))
  (if (is-eq tx-sender CONTRACT-OWNER)
    (ok (var-set cost-per-mint value))
    (err ERR-NOT-AUTHORIZED)
  )
)


(define-public (set-creator-address (address principal))
  (if (or
    (is-eq tx-sender CONTRACT-OWNER)
    (is-eq tx-sender (var-get creator-address))
  )
    (ok (var-set creator-address address))
    (err ERR-NOT-AUTHORIZED)
  )
)

(define-read-only (get-token-uri (token-id uint))
    (ok (some (var-get token-uri)))
)
    

(define-read-only (get-owner (index uint))
  (ok (nft-get-owner? bitgear index))
)


(define-public (transfer-stx (address principal) (amount uint))
  (if (is-eq tx-sender CONTRACT-OWNER)
    (as-contract (stx-transfer? amount (as-contract tx-sender) address))
    (err ERR-NOT-AUTHORIZED)
  )
)
