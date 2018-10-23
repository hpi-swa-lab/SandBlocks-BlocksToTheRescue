as yet unclassified
isInBounds: aPoint

	^ (aPoint x between: 1 and: (self left + self gameState gameWorldSize x)) 
		and: [aPoint y between: 1 and: (self top + self gameState gameWorldSize y)] 