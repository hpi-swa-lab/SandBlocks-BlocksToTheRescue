tests
testNoTransitionOnStateLock

	| model machine |
	model := self stateChangeModel.
	machine := model start.
	(model stateNamed: #start) lock.
	self
		assert: #start
		equals: machine currentState name.
	machine transition: #transition.
	self
		assert: #start
		equals: machine currentState name.