(use-trait avatar-trait       .nft-trait.nft-trait)
(use-trait equipment-trait    .bitgear-traits.equipment-trait-v0)
;; (use-trait equipment-trait    .rubber-emerald-wallaby.equipment-trait-v0)

(impl-trait .bitgear-traits.character-trait-v0)
;; (impl-trait .rubber-emerald-wallaby.character-trait-v0)

(define-constant NOT-AUTHORIZED     u401)
(define-constant NOT-WHITELISTED    u403)
(define-constant NOT-FOUND          u404)

(define-constant contract-owner tx-sender)
(define-data-var dungeon-master principal tx-sender)

(define-map player-character-collections { address: principal }
  {
    players: (list 1000 principal)
  }
)

(define-map characters { address: principal }
  {
    name: (string-utf8 16),
    avatar: uint
  }
)

(define-public (add-player-character-collection (collection-address principal))
  (if (is-eq (var-get dungeon-master) tx-sender)
    (ok (map-insert player-character-collections { address: collection-address } {players: (list)}))
    (err NOT-AUTHORIZED)
  )
)

(define-public (remove-player-character-collection (collection-address principal))
  (if (is-eq (var-get dungeon-master) tx-sender)
    (ok (map-delete player-character-collections { address: collection-address }))
    (err NOT-AUTHORIZED)
  )
)

(define-public (roll-character (character-name (string-utf8 16)) (collection <avatar-trait>) (token-id uint))
  (let (
    (pc-collections (unwrap! (map-get? player-character-collections { address: (contract-of collection) }) (err NOT-FOUND)))
    (player-list (get players pc-collections))
  ) 
    (try! (get-player-list collection))
    (try! (is-owner collection token-id))
    (asserts! (map-insert characters { address: tx-sender } { 
      name: character-name, 
      avatar: token-id
    }) (err NOT-AUTHORIZED))
    (ok 
      (map-set player-character-collections { address: (contract-of collection) } {
        players: (unwrap-panic (as-max-len? (append player-list tx-sender) u1000))
      })
    )
  )
)

(define-read-only (get-character (address principal))
  (ok 
    (unwrap! (map-get? characters { address: address }) (err NOT-FOUND))
  )
)

(define-read-only (get-player-list (collection <avatar-trait>))
  (let (
    (pc-collections (unwrap! (map-get? player-character-collections { address: (contract-of collection) }) (err NOT-WHITELISTED)))
    (player-list (get players pc-collections))
  ) 
    (ok player-list)
  )
)

(define-private (is-owner (collection <avatar-trait>) (id uint)) 
  (ok 
    (asserts! 
      (is-eq 
        (unwrap! (unwrap-panic (as-contract (contract-call? collection get-owner id))) (err NOT-FOUND))
        tx-sender
      )
      (err NOT-AUTHORIZED)
    )
  )
)

(define-public (bestow (new-dm principal))
  (if (is-eq tx-sender contract-owner)
    (ok (var-set dungeon-master new-dm))
    (err NOT-AUTHORIZED)
  )
)