accessing
addTransition: aBTRStateTransition

	aBTRStateTransition sourceStateName: self name.
	self transitions
		at: aBTRStateTransition name
		put: aBTRStateTransition.
	self
		changed: #transitions;
		changed: #createdTransition with: aBTRStateTransition.
	^ aBTRStateTransition