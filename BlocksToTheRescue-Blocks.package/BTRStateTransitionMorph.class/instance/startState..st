accessing
startState: aBTRState

	"self startState removeTransitionNamed: self transition name.
	aBTRState addTransition: self transition."

	self startStateMorph removeDependent: self.
	self transition sourceStateName: aBTRState name.
	self startStateMorph addDependent: self.