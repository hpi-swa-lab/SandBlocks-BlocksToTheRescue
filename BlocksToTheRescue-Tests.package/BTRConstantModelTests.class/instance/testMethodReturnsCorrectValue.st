testing
testMethodReturnsCorrectValue

	| value |
	value := Color random.
	self blockModel value: value.
	self assert: value
		equals: (self perform: self methodSelector).