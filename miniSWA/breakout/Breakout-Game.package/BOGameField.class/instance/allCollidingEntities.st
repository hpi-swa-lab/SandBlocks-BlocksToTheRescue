accessing
allCollidingEntities

	^ self allEntities
		select: [:entity | entity wantsCollisionHandling]