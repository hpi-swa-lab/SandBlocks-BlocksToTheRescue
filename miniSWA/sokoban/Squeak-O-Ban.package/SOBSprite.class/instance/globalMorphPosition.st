as yet unclassified
globalMorphPosition

	^ self morph owner ifNil: [self localMorphPosition]
		 ifNotNil: [self localMorphPosition + self morph owner position]