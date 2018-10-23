as yet unclassified
update: anAspect with: x

	anAspect = #stored ifTrue: [self storeBox].
	anAspect = #unstored ifTrue: [self unstoreBox].