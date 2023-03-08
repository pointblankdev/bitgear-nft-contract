;; title: quest
;; version: 0.0.1
;; summary: Simple quest for bitgear
;; description: as title

;; traits
;; 

;; token definitions
;; 

;; constants
;;

;; data vars
;;
(define-data-var unlock-height uint u0)

;; data maps
;;
(define-map quested principal bool)

;; public functions
;;
(define-public (start-quest (bitgear-index uint))
	(begin
		(asserts! (is-eq (unwrap-panic (unwrap-panic (contract-call? .bitgear-genesis get-owner bitgear-index))) tx-sender) (err "not owner"))
		(asserts! (is-none (map-get? quested tx-sender)) (err "already quested"))
		(map-set quested tx-sender true)
		(unwrap-panic (contract-call? .bitgear-genesis transfer bitgear-index tx-sender (as-contract tx-sender)))
		(ok true)
	)
)

(define-public (claim-rewards (bitgear-index uint))
	(let
		(
			(address tx-sender)
		)
		(asserts! (unwrap-panic (map-get? quested tx-sender)) (err "not started quest"))
	 	(unwrap-panic (as-contract (contract-call? .bitgear-genesis transfer bitgear-index tx-sender address)))
		(ok true)
	)
)

;; read only functions
;;
(define-read-only (check-map)
	(print (map-get? quested tx-sender))
)

;; private functions
;;

