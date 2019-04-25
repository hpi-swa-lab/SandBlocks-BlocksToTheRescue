as yet unclassified
testAsMethodExecution

	| selector parameters |
	selector := (self selector, #With:with:) asSymbol.
	parameters := { 42 . 'Cheese' }.
	
	(BTRBlockMethod 
		on: self class
		selector: selector
		parameterNames: { 'foo' . 'bar' }
		model: (self fixture)) install.
	
	self 
		assert: '84 piles of Old Cheese'
		equals: (self perform: selector withArguments: parameters) first.
		
	self class removeSelector: selector.
	