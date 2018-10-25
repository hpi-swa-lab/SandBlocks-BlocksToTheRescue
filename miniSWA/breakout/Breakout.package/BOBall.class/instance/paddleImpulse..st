entity-collision
paddleImpulse: aFactor
	"-1 ->   PI ->  1 @ 0"
	" 0 -> PI/2 ->  0 @-1"
	" 1 ->    0 -> -1 @ 0"
	| arc |
	arc := (aFactor + 1) * Float halfPi.
	^ arc cos negated @ arc sin negated