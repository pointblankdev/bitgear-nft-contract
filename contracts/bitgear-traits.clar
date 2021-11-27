(use-trait avatar-trait .nft-trait.nft-trait)
(use-trait gear-trait   .nft-trait.nft-trait)

(define-trait character-trait-v0
  (
    (roll-character ((string-utf8 16) <avatar-trait> uint) (response bool uint))

    ;; 7083 is the max size it seems
    (get-player-list () (response (list 7083 principal) uint))

    (get-character (principal) 
      (response 
        (tuple 
          (name (string-utf8 16))
          (avatar uint) 
        )
        uint
      )
    )
  )
)

(define-trait equipment-trait-v0
  (
    (initialize-equipment () (response bool uint))

    (equip-gear-main-hand (<character-trait-v0> <gear-trait> uint) (response bool uint))
    (equip-gear-off-hand (<character-trait-v0> <gear-trait> uint) (response bool uint))
    (equip-gear-two-hand (<character-trait-v0> <gear-trait> uint) (response bool uint))
    (equip-gear-head (<character-trait-v0> <gear-trait> uint) (response bool uint))
    (equip-gear-neck (<character-trait-v0> <gear-trait> uint) (response bool uint))
    (equip-gear-wrists (<character-trait-v0> <gear-trait> uint) (response bool uint))
    (equip-gear-right-ring-finger (<character-trait-v0> <gear-trait> uint) (response bool uint))
    (equip-gear-left-ring-finger (<character-trait-v0> <gear-trait> uint) (response bool uint))

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