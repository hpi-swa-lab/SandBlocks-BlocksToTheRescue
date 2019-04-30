as yet unclassified
update: anAspect

	Transcript showln: anAspect.
	anAspect = #increment ifTrue: [self value: self value + 1].
	anAspect = #decrement ifTrue: [self value: self value - 1].