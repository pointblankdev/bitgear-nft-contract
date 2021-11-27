(use-trait avatar-trait       .nft-trait.nft-trait)
(use-trait equipment-trait    .bitgear-traits.equipment-trait-v0)
;; (use-trait equipment-trait    .rubber-emerald-wallaby.equipment-trait-v0)

(impl-trait .bitgear-traits.character-trait-v0)
;; (impl-trait .rubber-emerald-wallaby.character-trait-v0)

(define-constant NOT-AUTHORIZED     u401)
(define-constant ALREADY-EQUIPPED   u403)
(define-constant NOT-FOUND          u404)

(define-constant contract-owner tx-sender)
(define-data-var dungeon-master principal tx-sender)

(define-data-var player-list (list 7083 principal) 
  (list)
)

(define-map player-character-collections { address: principal }
  bool
)

(define-map characters { address: principal }
  {
    name: (string-utf8 16),
    avatar: uint
  }
)

(define-public (add-player-character-collection (collection-address principal))
  (if (is-eq (var-get dungeon-master) tx-sender)
    (ok (map-insert player-character-collections { address: collection-address } true))
    (err NOT-AUTHORIZED)
  )
)

(define-public (roll-character (character-name (string-utf8 16)) (avatar-trait <avatar-trait>) (character-avatar uint))
  (begin
    (try! (is-playable-collection avatar-trait))
    (try! (is-owner avatar-trait character-avatar))
    (asserts! (map-insert characters { address: tx-sender } { 
      name: character-name, 
      avatar: character-avatar
    }) (err NOT-AUTHORIZED))
    (ok (var-set player-list (unwrap-panic (as-max-len? (append (var-get player-list) tx-sender) u7083))))
  )
)

(define-read-only (get-character (address principal))
  (ok 
    (unwrap! (map-get? characters { address: address }) (err NOT-FOUND))
  )
)

(define-read-only (get-player-list)
  (ok (var-get player-list))
)

(define-private (is-owner (avatar-trait <avatar-trait>) (id uint)) 
  (ok 
    (asserts! 
      (is-eq 
        (unwrap! (unwrap-panic (as-contract (contract-call? avatar-trait get-owner id))) (err NOT-FOUND))
        tx-sender
      )
      (err NOT-AUTHORIZED)
    )
  )
)

(define-private (is-playable-collection (avatar-trait <avatar-trait>))
  (ok 
    (unwrap! (map-get? player-character-collections {address: (contract-of avatar-trait) }) (err NOT-AUTHORIZED))
  )
)

(define-public (bestow (new-dm principal))
  (if (is-eq tx-sender contract-owner)
    (ok (var-set dungeon-master new-dm))
    (err NOT-AUTHORIZED)
  )
)