entity-collision
ballImpulse: aBOBall
	| arc |
	arc := (self position - aBOBall position) theta.
	^ arc cos @ arc sin