accessing
stateTransitionAssoc: anAssociation
	self removeDependent: self transition.
	stateTransitionAssoc := anAssociation.
	self addDependent: self transition.