tests - execution
testAsMethodExecution

	| selector |
	selector := (self selector, #Method) asSymbol.
	
	BTRBlocketMethod 
		compile: self table
		in: self class 
		signature: selector.
	
	self 
		assert: self defaultMatrix
		equals: (self perform: selector).
		
	self class removeSelector: selector.