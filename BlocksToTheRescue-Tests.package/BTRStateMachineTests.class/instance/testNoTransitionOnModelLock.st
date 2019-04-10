tests
testNoTransitionOnModelLock

	| model machine |
	model := self stateChangeModel.
	machine := model start.
	machine lock.
	self
		assert: #start
		equals: machine currentState name.
	machine transition: #transition.
	self
		assert: #start
		equals: machine currentState name.