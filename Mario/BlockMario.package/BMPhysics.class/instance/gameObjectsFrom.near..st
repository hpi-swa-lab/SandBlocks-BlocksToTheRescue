as yet unclassified
gameObjectsFrom: aCollection near: aPoint

	^  aCollection
		select: [:each | (aPoint - self threshold corner: aPoint + self threshold) 
			containsPoint: each center].
		