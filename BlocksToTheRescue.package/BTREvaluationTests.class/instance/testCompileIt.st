testing
testCompileIt

	| resultingMorph selector newExtent |
	selector := self temporaryMethodSelector.
	newExtent := self newMorphExtent.

	self class
		compile: 
			(Text withAll: selector asString, String crlfcrlf, '	^ '),
			(Text string: (String value: 1) attribute: (BTRBlockAttribute new anchoredMorph: Morph new)),
			(Text withAll: ' extent: ', newExtent)
		classified: #'test-run'
		notifying: nil.
	self assert: (self respondsTo: selector).

	resultingMorph := self perform: selector.
	self class removeSelector: selector.

	self assert: resultingMorph isMorph.
	self assert: resultingMorph extent equals: newExtent.
