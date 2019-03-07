constant methods
isConstantMethod

	^ self methodReference 
		ifNotNil: [:reference | reference compiledMethod isKindOf: BTRConstantMethod]
		ifNil: [false]