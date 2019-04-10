accessing
index: anInteger

	self value: (anInteger isZero 
		ifTrue: [nil]
		ifFalse: [self readOnlyCollection at: anInteger]).