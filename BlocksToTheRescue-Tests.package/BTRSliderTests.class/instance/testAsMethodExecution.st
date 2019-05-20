tests - execution
testAsMethodExecution

	| selector |
	selector := (self selector, #Method) asSymbol.
	
	BTRBlocketMethod 
		compile: self slider
		in: self class 
		signature: selector.
	
	self 
		assert: self defaultValue
		equals: (self perform: selector).
		
	self class removeSelector: selector.