as yet unclassified
testPlainExecution

	| foo bar |
	foo := 42.
	bar := 'Cheese'.	
	self 
		assert: '84 piles of Old Cheese'
		equals: (self class fixture valueInContext: thisContext) first.
	