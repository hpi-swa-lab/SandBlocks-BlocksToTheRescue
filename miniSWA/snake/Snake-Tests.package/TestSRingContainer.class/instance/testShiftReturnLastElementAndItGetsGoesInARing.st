as yet unclassified
testShiftReturnLastElementAndItGetsGoesInARing

	1 to: 3 do: [:each | self container add: each].
	self assert: self container shift equals: 3.
	self assert: self container shift equals: 2.
	self assert: self container shift equals: 1.
	self assert: self container shift equals: 3.