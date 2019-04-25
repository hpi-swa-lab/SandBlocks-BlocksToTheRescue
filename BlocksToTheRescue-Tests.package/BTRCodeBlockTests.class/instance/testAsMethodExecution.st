as yet unclassified
testAsMethodExecution

	| selector parameter |
	selector := (self selector, #Method:) asSymbol.
	parameter := 42.
	(BTRBlockMethod 
		on: self class
		selector: selector
		parameterNames: { 'x' }
		model: (BTRCodeModel for: 'x * x')) install.
	self 
		assert: parameter * parameter
		equals: (self perform: selector with: parameter).
		
	self class removeSelector: selector.
	