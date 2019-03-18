accessing
method

	^ self methodReference 
		ifNotNil: [:reference | reference compiledMethod]