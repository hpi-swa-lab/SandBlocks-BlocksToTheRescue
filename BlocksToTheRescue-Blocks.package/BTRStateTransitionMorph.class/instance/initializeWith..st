initialization
initializeWith: anAssociation

	self
		stateTransitionAssoc: anAssociation;
		initialize.
	self startStateMorph addDependent: self.
	self transition addDependent: self.
	self endStateMorph addDependent: self.