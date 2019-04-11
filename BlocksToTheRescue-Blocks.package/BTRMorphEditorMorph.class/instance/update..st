as yet unclassified
update: anAspect

	super update: anAspect.
	anAspect = #layout ifTrue: [self layoutChanged. self updateMorph].