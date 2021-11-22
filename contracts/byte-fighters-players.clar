(impl-trait .player-traits.character-trait-v0)

(define-constant NOT-AUTHORIZED     u401)
(define-constant NOT-FOUND          u404)

(define-constant MAIN-HAND          u0)
(define-constant OFF-HAND           u1)
(define-constant HEAD               u2)
(define-constant NECK               u3)
(define-constant WRIST              u4)
(define-constant RIGHT-RING-FINGER  u5)
(define-constant LEFT-RING-FINGER   u6)

(define-data-var player-list (list 2500 principal) 
  (list)
)

(define-map characters { address: principal }
  {
    name: (string-utf8 16),
    avatar: uint,
    main-hand: (optional uint),
    off-hand: (optional uint),
    head: (optional uint),
    neck: (optional uint),
    wrist: (optional uint),
    right-ring-finger: (optional uint),
    left-ring-finger: (optional uint)
  }
)

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

(define-read-only (get-character (address principal)) (ok (unwrap! (map-get? characters { address: tx-sender }) (err NOT-FOUND))))

(define-public (equip-gear-main-hand (gear-id uint))                (let ((equipped (unwrap! (map-get? characters { address: tx-sender }) (err NOT-FOUND)))) (try! (is-player)) (try! (is-gear-owner gear-id)) (asserts! (is-some (index-of (var-get gear-main-hand) gear-id)) (err NOT-FOUND)) (ok (begin (map-set characters { address: tx-sender } (merge equipped { main-hand: (some gear-id) }))))))
(define-public (equip-gear-off-hand (gear-id uint))                 (let ((equipped (unwrap! (map-get? characters { address: tx-sender }) (err NOT-FOUND)))) (try! (is-player)) (try! (is-gear-owner gear-id)) (asserts! (is-some (index-of (var-get gear-off-hand) gear-id)) (err NOT-FOUND)) (ok (begin (map-set characters { address: tx-sender } (merge equipped { main-hand: (some gear-id) }))))))
(define-public (equip-gear-head (gear-id uint))                     (let ((equipped (unwrap! (map-get? characters { address: tx-sender }) (err NOT-FOUND)))) (try! (is-player)) (try! (is-gear-owner gear-id)) (asserts! (is-some (index-of (var-get gear-head) gear-id)) (err NOT-FOUND)) (ok (begin (map-set characters { address: tx-sender } (merge equipped { main-hand: (some gear-id) }))))))
(define-public (equip-gear-neck (gear-id uint))                     (let ((equipped (unwrap! (map-get? characters { address: tx-sender }) (err NOT-FOUND)))) (try! (is-player)) (try! (is-gear-owner gear-id)) (asserts! (is-some (index-of (var-get gear-neck) gear-id)) (err NOT-FOUND)) (ok (begin (map-set characters { address: tx-sender } (merge equipped { main-hand: (some gear-id) }))))))
(define-public (equip-gear-wrist (gear-id uint))                    (let ((equipped (unwrap! (map-get? characters { address: tx-sender }) (err NOT-FOUND)))) (try! (is-player)) (try! (is-gear-owner gear-id)) (asserts! (is-some (index-of (var-get gear-wrist) gear-id)) (err NOT-FOUND)) (ok (begin (map-set characters { address: tx-sender } (merge equipped { main-hand: (some gear-id) }))))))
(define-public (equip-gear-right-ring-finger (gear-id uint))        (let ((equipped (unwrap! (map-get? characters { address: tx-sender }) (err NOT-FOUND)))) (try! (is-player)) (try! (is-gear-owner gear-id)) (asserts! (is-some (index-of (var-get gear-right-ring-finger) gear-id)) (err NOT-FOUND)) (ok (begin (map-set characters { address: tx-sender } (merge equipped { main-hand: (some gear-id) }))))))
(define-public (equip-gear-left-ring-finger (gear-id uint))         (let ((equipped (unwrap! (map-get? characters { address: tx-sender }) (err NOT-FOUND)))) (try! (is-player)) (try! (is-gear-owner gear-id)) (asserts! (is-some (index-of (var-get gear-left-ring-finger) gear-id)) (err NOT-FOUND)) (ok (begin (map-set characters { address: tx-sender } (merge equipped { main-hand: (some gear-id) }))))))

(define-public (roll-character (character-name (string-utf8 16)) (character-avatar uint))
  (begin
    (try! (is-owner character-avatar ))
    (asserts! (map-insert characters { address: tx-sender } { name: character-name, avatar: character-avatar, main-hand: none, off-hand: none, head: none, neck: none, wrist: none, right-ring-finger: none, left-ring-finger: none }) (err NOT-AUTHORIZED))
    (ok (var-set player-list (unwrap-panic (as-max-len? (append (var-get player-list) tx-sender) u2500))))
  )
)

(define-private (is-player)
  (is-owner (get avatar (try! (get-character tx-sender))))
)

(define-private (is-gear-owner (gear-id uint)) 
  (ok 
    (asserts! 
      (is-eq 
        (unwrap! (unwrap-panic (as-contract (contract-call? .bitgear get-owner gear-id))) (err NOT-AUTHORIZED))
        tx-sender
      )
      (err NOT-AUTHORIZED)
    )
  )
)

(define-private (is-owner (id uint)) 
  (ok 
    (asserts! 
      (is-eq 
        (unwrap! (unwrap-panic (as-contract (contract-call? 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM.byte-fighters get-owner id))) (err NOT-FOUND))
        tx-sender
      )
      (err NOT-AUTHORIZED)
    )
  )
)

(define-read-only (get-player-list)
  (ok (var-get player-list))
)