accessing
allTickingEntities

	^ self allEntities select: [:entity | entity isTicking]