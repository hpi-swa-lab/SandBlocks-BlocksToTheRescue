as yet unclassified
testAsMethodExecution

	| selector parameters |
	selector := (self selector, #With:with:) asSymbol.
	parameters := { 42 . 'Cheese' }.
	
	BTRBlocketMethod 
		compile: self class exampleGraph
		in: self class 
		signature: (BTRBlocketMethod joinSelector: selector parameterNames: { 'foo' . 'bar' }).
	
	self 
		assert: '84 piles of Old Cheese'
		equals: (self perform: selector withArguments: parameters) first.
		
	self class removeSelector: selector.
	