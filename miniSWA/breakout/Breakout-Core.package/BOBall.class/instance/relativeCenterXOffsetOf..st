collision
relativeCenterXOffsetOf: aBOCollisionResult
	| paddle |
	paddle := aBOCollisionResult oppositeEntityOf: self.
	
	^ (self position x - paddle position x)
	 	/ ((paddle extent x + self extent x)/2)