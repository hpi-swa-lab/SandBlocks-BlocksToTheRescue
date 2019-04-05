collision
isRelevantCollisionObjectForVisibleSection: aGameElement
	"GameElements are considered relevant, if they are within a certain distance to the currently visible screen."
	^(gameWorld 
		isWithin: (self visibilityTolerance + self extraToleranceForCollisionObjects) 
		toVisibleSection: aGameElement)