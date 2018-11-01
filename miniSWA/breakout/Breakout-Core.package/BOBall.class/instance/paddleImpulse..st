collision
paddleImpulse: aFactor
	"-1 ->   PI ->  1 @ 0"
	" 0 -> PI/2 ->  0 @-1"
	" 1 ->    0 -> -1 @ 0"
	^ ((aFactor + 1) * Float halfPi) asUnitCirclePoint negated