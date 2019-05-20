testing
testParseSelectorWithMissingBlockModel

	| selector |
	selector := #anExampleSelector.
	self 
		should: [
			self class
				compile: selector asString, ' ^ ', Character startOfHeading
				classified: #'test-run']
		raise: SyntaxErrorNotification.

	self class removeSelector: selector.