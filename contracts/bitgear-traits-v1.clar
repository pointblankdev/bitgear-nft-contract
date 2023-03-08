;; bitgear-traits-v1.clar

(use-trait collection-contract  .nft-trait.nft-trait)
(use-trait gear-contract        .nft-trait.nft-trait)

(define-trait character-trait
  (
    (roll-character ((string-utf8 16) <collection-contract> uint) (response bool uint))

    (get-character (principal) 
      (response 
        (tuple 
          (name (string-utf8 16))
          (collection principal)
          (avatar uint) 
        )
        uint
      )
    )
  )
)

(define-trait gear-slots-trait
  (
    (get-gear-main-hand () (response (list 1357 uint) uint))
    (get-gear-off-hand () (response (list 1300 uint) uint))
    (get-gear-two-hand () (response (list 1115 uint) uint))
    (get-gear-head () (response (list 251 uint) uint))
    (get-gear-neck () (response (list 258 uint) uint))
    (get-gear-wrists () (response (list 241 uint) uint))
    (get-gear-finger () (response (list 269 uint) uint))
  )
)

(define-trait equipment-trait
  (
    (initialize-equipment () (response bool uint))

    (equip-gear-main-hand (<character-trait> <gear-contract> uint <gear-slots-trait>) (response bool uint))
    (equip-gear-off-hand (<character-trait> <gear-contract> uint <gear-slots-trait>) (response bool uint))
    (equip-gear-two-hand (<character-trait> <gear-contract> uint <gear-slots-trait>) (response bool uint))
    (equip-gear-head (<character-trait> <gear-contract> uint <gear-slots-trait>) (response bool uint))
    (equip-gear-neck (<character-trait> <gear-contract> uint <gear-slots-trait>) (response bool uint))
    (equip-gear-wrists (<character-trait> <gear-contract> uint <gear-slots-trait>) (response bool uint))
    (equip-gear-right-ring-finger (<character-trait> <gear-contract> uint <gear-slots-trait>) (response bool uint))
    (equip-gear-left-ring-finger (<character-trait> <gear-contract> uint <gear-slots-trait>) (response bool uint))

    (get-equipment (principal) 
      (response 
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
        uint
      )
    )
  )
)