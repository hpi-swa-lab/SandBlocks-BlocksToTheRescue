updating
update: anAspect with: aValue

	anAspect = #remainingBoxes ifTrue: [].
	anAspect = #score ifTrue: [self score contents: aValue asString].
	anAspect = #moves ifTrue: [self moves contents: aValue asString].
