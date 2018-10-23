as yet unclassified
update: anAspect with: aValue

	anAspect = #position ifTrue: [self position: aValue. self updateMorph.]