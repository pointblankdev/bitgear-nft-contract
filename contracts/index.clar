;; e2e flow

(contract-call? .player-character-v0 add-collection .byte-fighters)

(contract-call? .byte-fighters mint)

(contract-call? .player-character-v0 roll-character u"Rozar" .byte-fighters u1000)

(contract-call? .player-character-v0 get-character 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM)

(contract-call? .bitgear-genesis claim u0)

(contract-call? .equipment-v0 initialize-equipment)

(contract-call? .equipment-v0 is-gear-equipped 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM) ;; fails

(contract-call? .equipment-v0 equip-gear-off-hand .player-character-v0 .bitgear-genesis u0 .bitgear-genesis-slots)

(contract-call? .equipment-v0 is-gear-equipped 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM)

;; questing

(contract-call? .bitgear-genesis claim u1)

(contract-call? .equipment-v0 unequip-gear-off-hand)

(contract-call? .woodlands-v0 quest u1) ;; fails

(contract-call? .equipment-v0 equip-gear-off-hand .player-character-v0 .bitgear-genesis u0 .bitgear-genesis-slots)

(contract-call? .woodlands-v0 quest u1) ;; fails

(contract-call? .bitgear-genesis transfer u1 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM .bitgear-genesis)

(contract-call? .woodlands-v0 quest u1) ;; fails

(contract-call? .bitgear-genesis bestow .woodlands-v0)

(contract-call? .woodlands-v0 quest u2) ;; fails

(contract-call? .woodlands-v0 quest u1)
