as yet unclassified
testPlainExecution

	| x codeBlock |
	x := 42.
	codeBlock := BTRCodeModel for: 'x * x'.
	self assert: x * x equals: (codeBlock valueInContext: thisContext).