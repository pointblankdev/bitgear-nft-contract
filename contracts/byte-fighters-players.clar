(impl-trait .player-trait.player-trait-v0)

(define-constant contract-owner tx-sender)
(define-constant ERR-NOT-AUTHORIZED u401)
(define-constant NOT-FOUND u404)

(define-data-var player-count uint u0)

;; TODO refactor to use a single map + merge logic
(define-map name { address: principal } { name: (string-ascii 16) })
(define-map avatar { address: principal } { avatar: uint })
(define-map main-hand { address: principal } { main-hand: uint })
(define-map off-hand { address: principal } { off-hand: uint })
(define-map head { address: principal } { head: uint })
(define-map neck { address: principal } { neck: uint })
(define-map wrist { address: principal } { wrist: uint })
(define-map right-ring-finger { address: principal } { right-ring-finger: uint })
(define-map left-ring-finger { address: principal } { left-ring-finger: uint })

;; TODO fill these out with supported gear for each slot
(define-data-var gear-main-hand (list 3 uint)
    (list u0 u1 u801)
)
(define-data-var gear-off-hand (list 3 uint)
    (list u0 u1 u2)
)
(define-data-var gear-head (list 3 uint)
    (list u0 u1 u2)
)
(define-data-var gear-neck (list 3 uint)
    (list u0 u1 u2)
)
(define-data-var gear-wrist (list 3 uint)
    (list u0 u1 u2)
)
(define-data-var gear-right-ring-finger (list 3 uint)
    (list u0 u1 u2)
)
(define-data-var gear-left-ring-finger (list 3 uint)
    (list u0 u1 u2)
)

(define-public (equip-gear-main-hand (id uint)) (begin (try! (is-player)) (try! (is-gear-owner id)) (asserts! (is-some (index-of (var-get gear-main-hand) id)) (err NOT-FOUND)) (ok (begin (map-set main-hand { address: tx-sender } { main-hand: id })))))
(define-public (equip-gear-off-hand (id uint)) (begin (try! (is-player)) (try! (is-gear-owner id)) (asserts! (is-some (index-of (var-get gear-off-hand) id)) (err NOT-FOUND)) (ok (begin (map-set off-hand { address: tx-sender } { off-hand: id })))))
(define-public (equip-gear-head (id uint)) (begin (try! (is-player)) (try! (is-gear-owner id)) (asserts! (is-some (index-of (var-get gear-head) id)) (err NOT-FOUND)) (ok (begin (map-set head { address: tx-sender } { head: id })))))
(define-public (equip-gear-neck (id uint)) (begin (try! (is-player)) (try! (is-gear-owner id)) (asserts! (is-some (index-of (var-get gear-neck) id)) (err NOT-FOUND)) (ok (begin (map-set neck { address: tx-sender } { neck: id })))))
(define-public (equip-gear-wrist (id uint)) (begin (try! (is-player)) (try! (is-gear-owner id)) (asserts! (is-some (index-of (var-get gear-wrist) id)) (err NOT-FOUND)) (ok (begin (map-set wrist { address: tx-sender } { wrist: id })))))
(define-public (equip-gear-right-ring-finger (id uint)) (begin (try! (is-player)) (try! (is-gear-owner id)) (asserts! (is-some (index-of (var-get gear-right-ring-finger) id)) (err NOT-FOUND)) (ok (begin (map-set right-ring-finger { address: tx-sender } { right-ring-finger: id })))))
(define-public (equip-gear-left-ring-finger (id uint)) (begin (try! (is-player)) (try! (is-gear-owner id)) (asserts! (is-some (index-of (var-get gear-left-ring-finger) id)) (err NOT-FOUND)) (ok (begin (map-set left-ring-finger { address: tx-sender } { left-ring-finger: id })))))

;; split contract into 2 contracts: players and equipment.
(define-read-only (get-name) (ok (unwrap! (map-get? name { address: tx-sender }) (err NOT-FOUND))))
(define-read-only (get-avatar) (ok (unwrap! (map-get? avatar { address: tx-sender }) (err NOT-FOUND))))
(define-read-only (get-gear-main-hand) (ok (unwrap! (map-get? main-hand { address: tx-sender }) (err NOT-FOUND))))
(define-read-only (get-gear-off-hand) (ok (unwrap! (map-get? off-hand { address: tx-sender }) (err NOT-FOUND))))
(define-read-only (get-gear-head) (ok (unwrap! (map-get? head { address: tx-sender }) (err NOT-FOUND))))
(define-read-only (get-gear-neck) (ok (unwrap! (map-get? neck { address: tx-sender }) (err NOT-FOUND))))
(define-read-only (get-gear-wrist) (ok (unwrap! (map-get? wrist { address: tx-sender }) (err NOT-FOUND))))
(define-read-only (get-gear-right-ring-finger) (ok (unwrap! (map-get? right-ring-finger { address: tx-sender }) (err NOT-FOUND))))
(define-read-only (get-gear-left-ring-finger) (ok (unwrap! (map-get? left-ring-finger { address: tx-sender }) (err NOT-FOUND))))

(define-read-only (get-name-by-player-id (address principal)) (ok (unwrap! (map-get? name { address: address }) (err NOT-FOUND))))
(define-read-only (get-avatar-by-player-id (address principal)) (ok (unwrap! (map-get? avatar { address: address }) (err NOT-FOUND))))
(define-read-only (get-gear-main-hand-by-player-id (address principal)) (ok (unwrap! (map-get? main-hand { address: address }) (err NOT-FOUND))))
(define-read-only (get-gear-off-hand-by-player-id (address principal)) (ok (unwrap! (map-get? off-hand { address: address }) (err NOT-FOUND))))
(define-read-only (get-gear-head-by-player-id (address principal)) (ok (unwrap! (map-get? head { address: address }) (err NOT-FOUND))))
(define-read-only (get-gear-neck-by-player-id (address principal)) (ok (unwrap! (map-get? neck { address: address }) (err NOT-FOUND))))
(define-read-only (get-gear-wrist-by-player-id (address principal)) (ok (unwrap! (map-get? wrist { address: address }) (err NOT-FOUND))))
(define-read-only (get-gear-right-ring-finger-by-player-id (address principal)) (ok (unwrap! (map-get? right-ring-finger { address: address }) (err NOT-FOUND))))
(define-read-only (get-gear-left-ring-finger-by-player-id (address principal)) (ok (unwrap! (map-get? left-ring-finger { address: address }) (err NOT-FOUND))))

(define-public (create-player (player-name (string-ascii 16)) (player-avatar uint))
  (begin
    (try! (is-owner player-avatar ))
    (ok 
      (begin
        (map-insert name { address: tx-sender } { name: player-name })
        (map-insert avatar { address: tx-sender } { avatar: player-avatar })
        (var-set player-count (+ (var-get player-count) u1))
      )
    )
  )
)

(define-private (is-player)
  (is-owner (get avatar (try! (get-avatar))))
)

(define-private (is-gear-owner (id uint)) 
  (ok 
    (asserts! 
      (is-eq 
        (unwrap! (unwrap-panic (as-contract (contract-call? .bitgear get-owner id))) (err ERR-NOT-AUTHORIZED))
        tx-sender
      )
      (err ERR-NOT-AUTHORIZED)
    )
  )
)

(define-private (is-owner (id uint)) 
  (ok 
    (asserts! 
      (is-eq 
        (unwrap! (unwrap-panic (as-contract (contract-call? 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM.byte-fighters get-owner id))) (err ERR-NOT-AUTHORIZED))
        tx-sender
      )
      (err ERR-NOT-AUTHORIZED)
    )
  )
)

(define-read-only (get-player-count)
  (ok (var-get player-count))
)

