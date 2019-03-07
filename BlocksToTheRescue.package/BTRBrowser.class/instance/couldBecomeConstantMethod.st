constant methods
couldBecomeConstantMethod

	^ self methodReference 
		ifNotNil: [:reference | BTRConstantMethod canBeCreatedFrom: reference compiledMethod]
		ifNil: [false]