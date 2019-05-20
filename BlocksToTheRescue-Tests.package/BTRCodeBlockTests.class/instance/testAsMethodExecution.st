as yet unclassified
testAsMethodExecution

	| selector parameter |
	selector := (self selector, #Method:) asSymbol.
	parameter := 42.
	
	BTRBlocketMethod 
		compile: (BTRCodeModel for: 'x * x')
		in: self class 
		signature: selector, ' x'.
		
	self 
		assert: parameter * parameter
		equals: (self perform: selector with: parameter).
		
	self class removeSelector: selector.
	