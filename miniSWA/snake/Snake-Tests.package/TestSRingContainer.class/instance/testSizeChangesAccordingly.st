as yet unclassified
testSizeChangesAccordingly

	self assert: self container size equals: 0.
	self container add: #testElement.
	self assert: self container size equals: 1.
	
	5 timesRepeat: [ self container add: #testElement ].
	self assert: self container size equals: 6.