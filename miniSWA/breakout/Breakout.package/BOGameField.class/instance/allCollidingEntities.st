accessing
allCollidingEntities

	^ Generator on: [:g |
		self allEntities do: [:entity |
			entity hasCollisionHandling ifTrue: [g yield: entity]].
		g yield: self boundsEntity]