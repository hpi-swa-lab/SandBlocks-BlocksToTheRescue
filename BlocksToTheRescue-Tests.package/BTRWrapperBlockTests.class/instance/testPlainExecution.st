as yet unclassified
testPlainExecution

	| wrappedBlock wrapperBlock |
	wrappedBlock := BTRColorModel for: Color aluminum.
	wrapperBlock := BTRWrapperBlock for: wrappedBlock.
	self assert: wrappedBlock equals: (wrapperBlock valueInContext: thisContext).