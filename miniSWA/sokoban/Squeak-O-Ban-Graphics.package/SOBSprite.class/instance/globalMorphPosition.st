accessing
globalMorphPosition

	^ self morph owner ifNil: [self localMorphPosition]
		 ifNotNil: [self localMorphPosition + self morph owner position]