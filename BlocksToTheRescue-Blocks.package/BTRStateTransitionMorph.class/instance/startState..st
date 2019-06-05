accessing
startState: aBTRState

	"self startState removeTransitionNamed: self transition name.
	aBTRState addTransition: self transition."

	self startStateMorph removeDependent: self.
	aBTRState adoptTransition: self transition.
	self startStateMorph addDependent: self.