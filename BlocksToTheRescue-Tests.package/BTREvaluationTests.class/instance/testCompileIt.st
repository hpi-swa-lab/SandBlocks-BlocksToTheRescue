testing
testCompileIt
	"Squeak Version < 5.2 didn't have the same compiler structure we need to
	compile Text instead of Strings. This test will then fail because the Morph
	cannot be used as a literal and nil is used instead."

	| resultingMorph selector newExtent |
	selector := self temporaryMethodSelector.
	newExtent := self newMorphExtent.

	self class
		compile: 
			(Text withAll: selector asString, String crlfcrlf, '	^ '),
			(Text string: (String value: 1) attribute: (BTRBlockAttribute new blockModel: Morph new)),
			(Text withAll: ' extent: ', newExtent)
		classified: #'test-run'
		notifying: nil.
	self assert: (self respondsTo: selector).

	resultingMorph := self perform: selector.
	self class removeSelector: selector.

	self assert: resultingMorph isMorph.
	self assert: resultingMorph extent equals: newExtent.
