tests
testStartState

	| model machine |
	model := self startOnlyModel.
	machine := model start.
	self
		assert: model startState
		equals: machine state.