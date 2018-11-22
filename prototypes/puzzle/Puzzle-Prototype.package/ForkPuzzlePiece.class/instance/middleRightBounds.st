as yet unclassified
middleRightBounds
	
	| middleRightBounds |
	middleRightBounds := self bounds.
	middleRightBounds := middleRightBounds top: self upperBounds bottom.
	middleRightBounds := middleRightBounds bottom: self lowerBounds top.
	middleRightBounds := middleRightBounds left: self bounds width / 2 + self bounds left.
			
	^ middleRightBounds