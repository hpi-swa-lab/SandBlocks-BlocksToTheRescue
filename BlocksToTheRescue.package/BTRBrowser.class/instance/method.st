as yet unclassified
method

	^ self methodReference 
		ifNotNil: [:reference | reference compiledMethod]