updating
update: anAspect

	anAspect = #increment ifTrue: [self value: self blockModel value + 1].
	anAspect = #decrement ifTrue: [self value: self blockModel value - 1].