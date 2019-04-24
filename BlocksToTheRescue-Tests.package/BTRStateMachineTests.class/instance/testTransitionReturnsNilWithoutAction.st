tests
testTransitionReturnsNilWithoutAction

	| model machine |
	model := self stateChangeModel.
	machine := model start.
	self assert: (machine transition: #reset) equals: nil