(define-trait character-trait-v0
  (
    (roll-character ((string-utf8 16) uint) (response bool uint))

    (equip-gear-main-hand (uint) (response bool uint))
    (equip-gear-off-hand (uint) (response bool uint))
    (equip-gear-two-hand (uint) (response bool uint))
    (equip-gear-head (uint) (response bool uint))
    (equip-gear-neck (uint) (response bool uint))
    (equip-gear-wrists (uint) (response bool uint))
    (equip-gear-right-ring-finger (uint) (response bool uint))
    (equip-gear-left-ring-finger (uint) (response bool uint))

    (get-player-list () (response (list 2500 principal) uint))

    (get-character (principal) 
      (response 
        (tuple 
          (name (string-utf8 16)) 
          (avatar uint) 
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