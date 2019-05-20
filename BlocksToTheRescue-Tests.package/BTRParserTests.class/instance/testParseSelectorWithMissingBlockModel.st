testing
testParseSelectorWithMissingBlockModel

	| selector resultingSelector |
	selector := #anExampleSelector.
	resultingSelector := self parser parseSelector: selector asString, '

	^ ', Character startOfHeading.

	self assert: selector equals: resultingSelector.