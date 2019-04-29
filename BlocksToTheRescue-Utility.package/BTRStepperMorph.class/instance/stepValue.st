stepping
stepValue

	self shouldIncrement
		ifTrue: [self increment]
		ifFalse: [self decrement].