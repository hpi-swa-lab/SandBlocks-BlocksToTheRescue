initialization
initializeWith: aBTRStateTransition

	self
		transition: aBTRStateTransition;
		initialize.
	self startStateMorph addDependent: self.
	self transition addDependent: self.
	self endStateMorph addDependent: self.