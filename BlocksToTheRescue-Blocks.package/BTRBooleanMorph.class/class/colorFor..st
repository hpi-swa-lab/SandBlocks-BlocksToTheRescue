constants
colorFor: aBoolean

	^ aBoolean
		ifTrue: [self trueColor]
		ifFalse: [self falseColor]