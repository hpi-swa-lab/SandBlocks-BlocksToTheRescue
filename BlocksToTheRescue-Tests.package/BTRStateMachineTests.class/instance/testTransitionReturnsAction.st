tests
testTransitionReturnsAction

	| model machine |
	model := self stateChangeModel.
	machine := model start.
	self assert: (machine transition: #transition) equals: #hello