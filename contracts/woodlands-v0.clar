(define-constant QUEST-COMPLETE     u200)
(define-constant NOT-AUTHORIZED     u401)
(define-constant NOT-FOUND          u404)


(define-public (quest (gear-id uint))
    (let (
        (player tx-sender)
    )
        (asserts! (unwrap! (contract-call? .equipment-v0 is-gear-equipped tx-sender) (err NOT-AUTHORIZED)) (err NOT-AUTHORIZED))
        (asserts! (unwrap! (as-contract (contract-call? .bitgear-genesis grant gear-id player)) (err NOT-FOUND)) (err NOT-FOUND))
        (print "Quest Completed!")
        (ok QUEST-COMPLETE)
    )
)