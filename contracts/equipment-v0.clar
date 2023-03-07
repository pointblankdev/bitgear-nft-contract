(use-trait gear-contract .nft-trait.nft-trait)
(use-trait gear-slots-contract .bitgear-traits-v1.gear-slots-trait)
(use-trait player-character-contract .bitgear-traits-v1.character-trait)

(impl-trait .bitgear-traits-v1.equipment-trait)

(define-constant NOT-AUTHORIZED     u401)
(define-constant ALREADY-EQUIPPED   u403)
(define-constant NOT-FOUND          u404)

(define-map equipment { address: principal }
  {
    main-hand: (optional uint),
    off-hand: (optional uint),
    two-hand: (optional uint),
    head: (optional uint),
    neck: (optional uint),
    wrists: (optional uint),
    right-ring-finger: (optional uint),
    left-ring-finger: (optional uint)
  }
)

(define-map gear-slots-map { gear-contract: principal } principal)

(define-public (initialize-equipment)
  (ok 
    (map-set equipment { address: tx-sender } { 
      main-hand: none, 
      off-hand: none, 
      two-hand: none, 
      head: none, 
      neck: none, 
      wrists: none, 
      right-ring-finger: none, 
      left-ring-finger: none 
    })
  )
)

(define-public (equip-gear-main-hand (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-main-hand player-character-contract tx-sender gear-contract gear-id gear-slots-contract))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { main-hand: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-off-hand (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-off-hand player-character-contract tx-sender gear-contract gear-id gear-slots-contract))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { off-hand: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-two-hand (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-two-hand player-character-contract tx-sender gear-contract gear-id gear-slots-contract))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { two-hand: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-head (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-head player-character-contract tx-sender gear-contract gear-id gear-slots-contract))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { head: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-neck (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>)) 
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-neck player-character-contract tx-sender gear-contract gear-id gear-slots-contract))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { neck: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-wrists (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>)) 
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-wrists player-character-contract tx-sender gear-contract gear-id gear-slots-contract))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { wrists: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-right-ring-finger (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-finger player-character-contract tx-sender gear-contract gear-id gear-slots-contract))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { right-ring-finger: (some gear-id) }))
      )
    )
  )
)

(define-public (equip-gear-left-ring-finger (player-character-contract <player-character-contract>) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (try! (can-equip-finger player-character-contract tx-sender gear-contract gear-id gear-slots-contract))
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { left-ring-finger: (some gear-id) }))
      )
    )
  )
)

(define-public (unequip-gear-main-hand)
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { main-hand: none }))
      )
    )
  )
)

(define-public (unequip-gear-off-hand)
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { off-hand: none }))
      )
    )
  )
)

(define-public (unequip-gear-two-hand)
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { two-hand: none }))
      )
    )
  )
)

(define-public (unequip-gear-head)
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { head: none }))
      )
    )
  )
)

(define-public (unequip-gear-neck)
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { neck: none }))
      )
    )
  )
)

(define-public (unequip-gear-wrists)
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { wrists: none }))
      )
    )
  )
)

(define-public (unequip-gear-right-ring-finger)
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { right-ring-finger: none }))
      )
    )
  )
)

(define-public (unequip-gear-left-ring-finger)
  (let (
    (equipped (unwrap! (map-get? equipment { address: tx-sender }) (err NOT-FOUND)))
  ) 
    (ok 
      (begin 
        (map-set equipment { address: tx-sender } (merge equipped { left-ring-finger: none }))
      )
    )
  )
)

(define-read-only (get-equipment (address principal))
  (ok 
    (unwrap! (map-get? equipment { address: address }) (err NOT-FOUND))
  )
)

(define-read-only (is-gear-equipped (address principal))
  (ok 
    (or
      (is-some (get main-hand (unwrap! (get-equipment address) (err NOT-FOUND))))
      (is-some (get off-hand (unwrap! (get-equipment address) (err NOT-FOUND))))
      (is-some (get two-hand (unwrap! (get-equipment address) (err NOT-FOUND))))
      (is-some (get head (unwrap! (get-equipment address) (err NOT-FOUND))))
      (is-some (get neck (unwrap! (get-equipment address) (err NOT-FOUND))))
      (is-some (get wrists (unwrap! (get-equipment address) (err NOT-FOUND))))
      (is-some (get right-ring-finger (unwrap! (get-equipment address) (err NOT-FOUND))))
      (is-some (get left-ring-finger (unwrap! (get-equipment address) (err NOT-FOUND))))
    )
  )
)

(define-private (can-equip-main-hand (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    ;; ensure gear and gear-slots are from the same principal
    ;; (try! (is-slots-trusted gear-contract gear-slots-contract)) 
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! 
      (is-some 
        (index-of 
          (unwrap! (contract-call? gear-slots-contract get-gear-main-hand ) (err NOT-FOUND))
          gear-id
        )
      )
      (err NOT-AUTHORIZED)
    )
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    ;; ensure two hand is not already equipped
    (asserts! (not (is-two-hand-equipped equipped)) (err ALREADY-EQUIPPED)) 
    (ok true)
  )
)

(define-private (can-equip-off-hand (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    ;; ensure gear and gear-slots are from the same principal
    ;; (try! (is-slots-trusted gear-contract gear-slots-contract)) 
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! 
      (is-some 
        (index-of 
          (unwrap! (contract-call? gear-slots-contract get-gear-off-hand ) (err NOT-FOUND))
          gear-id
        )
      )
      (err NOT-AUTHORIZED)
    )
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    ;; ensure two hand is not already equipped
    (asserts! (not (is-two-hand-equipped equipped)) (err ALREADY-EQUIPPED)) 
    (ok true)
  )
)

(define-private (can-equip-two-hand (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    ;; ensure gear and gear-slots are from the same principal
    ;; (try! (is-slots-trusted gear-contract gear-slots-contract)) 
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! 
      (is-some 
        (index-of 
          (unwrap! (contract-call? gear-slots-contract get-gear-two-hand ) (err NOT-FOUND))
          gear-id
        )
      )
      (err NOT-AUTHORIZED)
    )
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    ;; ensure main or off hand is not already equipped
    (asserts! (not (is-main-or-off-hand-equipped equipped)) (err ALREADY-EQUIPPED)) 
    (ok true)
  )
)

(define-private (can-equip-head (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    ;; ensure gear and gear-slots are from the same principal
    ;; (try! (is-slots-trusted gear-contract gear-slots-contract)) 
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! 
      (is-some 
        (index-of 
          (unwrap! (contract-call? gear-slots-contract get-gear-head ) (err NOT-FOUND))
          gear-id
        )
      )
      (err NOT-AUTHORIZED)
    )
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    (ok true)
  )
)

(define-private (can-equip-neck (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    ;; ensure gear and gear-slots are from the same principal
    ;; (try! (is-slots-trusted gear-contract gear-slots-contract)) 
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! 
      (is-some 
        (index-of 
          (unwrap! (contract-call? gear-slots-contract get-gear-neck ) (err NOT-FOUND))
          gear-id
        )
      )
      (err NOT-AUTHORIZED)
    )
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    (ok true)
  )
)

(define-private (can-equip-wrists (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    ;; ensure gear and gear-slots are from the same principal
    ;; (try! (is-slots-trusted gear-contract gear-slots-contract)) 
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! 
      (is-some 
        (index-of 
          (unwrap! (contract-call? gear-slots-contract get-gear-wrists ) (err NOT-FOUND))
          gear-id
        )
      )
      (err NOT-AUTHORIZED)
    )
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    (ok true)
  )
)

(define-private (can-equip-finger (player-character-contract <player-character-contract>) (player-address principal) (gear-contract <gear-contract>) (gear-id uint) (gear-slots-contract <gear-slots-contract>))
  (let (
    (equipped (unwrap! (map-get? equipment { address: player-address }) (err NOT-FOUND)))
  )
    ;; ensure gear and gear-slots are from the same principal
    ;; (try! (is-slots-trusted gear-contract gear-slots-contract)) 
    (try! (is-player player-character-contract player-address)) 
    (try! (is-gear-owner gear-contract gear-id)) 
    ;; ensure it can be equipped to the slot
    (asserts! 
      (is-some 
        (index-of 
          (unwrap! (contract-call? gear-slots-contract get-gear-finger ) (err NOT-FOUND))
          gear-id
        )
      )
      (err NOT-AUTHORIZED)
    )
    ;; ensure the gear is not already equipped
    (asserts! (not (is-equipped equipped)) (err ALREADY-EQUIPPED))
    (ok true)
  )
)

;; (define-private (is-slots-trusted (gear-contract <gear-contract>) (gear-slots-contract <gear-slots-contract>))
;;   (ok 
;;     (asserts! 
;;       (is-eq 
;;         (get hash-bytes (principal-destruct? gear-contract)) (get hash-bytes (principal-destruct? gear-slots-contract))
;;       )
;;       (err NOT-AUTHORIZED)
;;     )
;;   )
;; )

(define-private (is-player (player-character-contract <player-character-contract>) (player-address principal))
  (ok 
    (unwrap! (contract-call? player-character-contract get-character player-address ) (err NOT-FOUND))
  )
)

(define-private (is-gear-owner (gear-contract <gear-contract>) (id uint)) 
  (begin
    (ok 
      (asserts! 
        (is-eq 
          (unwrap! (unwrap-panic (as-contract (contract-call? gear-contract get-owner id))) (err NOT-AUTHORIZED))
          tx-sender
        )
        (err NOT-AUTHORIZED)
      )
    )
  )
)

(define-private (is-equipped 
    (equipped 
      (tuple 
        (main-hand (optional uint)) 
        (off-hand (optional uint)) 
        (two-hand (optional uint)) 
        (head (optional uint)) 
        (neck (optional uint)) 
        (wrists (optional uint)) 
        (right-ring-finger (optional uint)) 
        (left-ring-finger (optional uint))
      )
    )
  )
  (or 
    (is-some (get main-hand equipped))
    (is-some (get off-hand equipped))
    (is-some (get two-hand equipped))
    (is-some (get head equipped))
    (is-some (get neck equipped))
    (is-some (get wrists equipped))
    (is-some (get left-ring-finger equipped))
    (is-some (get right-ring-finger equipped))
  )
)

(define-private (is-two-hand-equipped 
    (equipped 
      (tuple 
        (main-hand (optional uint)) 
        (off-hand (optional uint)) 
        (two-hand (optional uint)) 
        (head (optional uint)) 
        (neck (optional uint)) 
        (wrists (optional uint)) 
        (right-ring-finger (optional uint)) 
        (left-ring-finger (optional uint))
      )
    )
  )
  (is-some (get two-hand equipped))
)
(define-private (is-main-or-off-hand-equipped 
    (equipped 
      (tuple 
        (main-hand (optional uint)) 
        (off-hand (optional uint)) 
        (two-hand (optional uint)) 
        (head (optional uint)) 
        (neck (optional uint)) 
        (wrists (optional uint)) 
        (right-ring-finger (optional uint)) 
        (left-ring-finger (optional uint))
      )
    )
  )
  (or 
    (is-some (get main-hand equipped))
    (is-some (get off-hand equipped))
  )
)