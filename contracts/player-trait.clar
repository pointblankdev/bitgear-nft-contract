(define-trait player-trait-v0
  (
    (create-player ((string-ascii 16) uint) (response bool uint))

    (get-player-count () (response uint uint))

    (equip-gear-main-hand (uint) (response bool uint))
    (equip-gear-off-hand (uint) (response bool uint))
    (equip-gear-head (uint) (response bool uint))
    (equip-gear-neck (uint) (response bool uint))
    (equip-gear-wrist (uint) (response bool uint))
    (equip-gear-right-ring-finger (uint) (response bool uint))
    (equip-gear-left-ring-finger (uint) (response bool uint))

    (get-name () (response (tuple (name (string-ascii 16))) uint))
    (get-avatar () (response (tuple (avatar uint)) uint))
    (get-gear-main-hand () (response (tuple (main-hand uint)) uint))
    (get-gear-off-hand () (response (tuple (off-hand uint)) uint))
    (get-gear-head () (response (tuple (head uint)) uint))
    (get-gear-neck () (response (tuple (neck uint)) uint))
    (get-gear-wrist () (response (tuple (wrist uint)) uint))
    (get-gear-right-ring-finger () (response (tuple (right-ring-finger uint)) uint))
    (get-gear-left-ring-finger () (response (tuple (left-ring-finger uint)) uint))
  )
)