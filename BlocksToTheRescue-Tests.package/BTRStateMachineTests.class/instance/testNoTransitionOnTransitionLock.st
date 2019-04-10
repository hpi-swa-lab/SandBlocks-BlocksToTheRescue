tests
testNoTransitionOnTransitionLock

	| model machine |
	model := self stateChangeModel.
	machine := model start.
	((model stateNamed: #start) transitionNamed: #transition) lock.
	self
		assert: #start
		equals: machine currentState name.
	machine transition: #transition.
	self
		assert: #start
		equals: machine currentState name.