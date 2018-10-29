accessing
allEntitiesOfType: aClass

	^ self allEntities
		select: [:entity | entity class = aClass]