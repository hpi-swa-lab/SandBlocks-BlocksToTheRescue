testing
testParseSelectorWithBlockModel

	| selector resultingSelector |
	selector := #anExampleSelector.
	resultingSelector := self parser parseSelector: selector asString, '

	^ ', (BTRBlockAttribute asTextFrom: (BTRConstantModel new)).

	self assert: selector equals: resultingSelector.