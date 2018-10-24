accessing
isFreeAt: aPoint

	^ (self isInBounds: aPoint) 
		and: [(self at: aPoint) isFree] 