tests - execution
testAsMethodExecution

	| selector |
	selector := (self selector, #Method) asSymbol.
	
	(BTRBlockMethod 
		on: self class
		selector: selector
		model: self slider) install.
	
	self 
		assert: self defaultValue
		equals: (self perform: selector).
		
	self class removeSelector: selector.