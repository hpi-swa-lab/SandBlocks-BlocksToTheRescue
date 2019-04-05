as yet unclassified
index: anInteger

	self value: (anInteger isZero 
		ifTrue: [nil]
		ifFalse: [self readOnlyCollection at: anInteger]).