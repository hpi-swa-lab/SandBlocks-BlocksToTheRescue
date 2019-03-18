tests
testMethodReturnsCorrectValue

	| value |
	value := Color random.
	self method value: value.
	self assert: value
		equals: (self perform: self methodSelector).