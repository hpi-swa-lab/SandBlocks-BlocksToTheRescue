tests
testTransitionChangesState

	| model machine |
	model := self stateChangeModel.
	machine := model start.
	self
		assert: #start
		equals: machine currentState name.
	machine transition: #transition.
	self
		assert: #target
		equals: machine currentState name.