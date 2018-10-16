as yet unclassified
isInBounds: aPoint

	^ (aPoint x between: 1 and: (self left + self gameWorldSize x)) 
		and: [aPoint y between: 1 and: (self top + self gameWorldSize y)] 