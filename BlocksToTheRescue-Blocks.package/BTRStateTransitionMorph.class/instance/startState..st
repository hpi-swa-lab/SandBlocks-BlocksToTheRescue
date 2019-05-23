accessing
startState: aBTRState

	self startStateMorph removeDependent: self.
	self stateTransitionAssoc: aBTRState -> self transition.
	self startStateMorph addDependent: self.