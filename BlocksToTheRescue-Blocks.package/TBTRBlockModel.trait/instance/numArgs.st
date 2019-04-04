accessing
numArgs

	^ self selector isUnary
		ifTrue: [0]
		ifFalse: [self selector keywords size]