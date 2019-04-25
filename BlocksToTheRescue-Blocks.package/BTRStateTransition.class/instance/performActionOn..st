running
performActionOn: anObject

	^ self action isSymbol
		ifTrue: [self action value: anObject]
		ifFalse: [self action valueWithPossibleArgs: {anObject}].