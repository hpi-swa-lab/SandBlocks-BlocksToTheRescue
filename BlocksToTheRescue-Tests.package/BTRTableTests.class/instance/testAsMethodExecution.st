tests - execution
testAsMethodExecution

	| selector |
	selector := (self selector, #Method) asSymbol.
	
	(BTRBlockMethod 
		on: self class
		selector: selector
		model: self table) install.
	
	self 
		assert: self defaultMatrix
		equals: (self perform: selector).
		
	self class removeSelector: selector.