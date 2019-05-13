accessing
endState: aBTRState

	self endStateMorph removeDependent: self.
	self transition targetStateName: aBTRState name.
	self endStateMorph addDependent: self.