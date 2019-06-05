accessing
adoptTransition: aBTRStateTransition

	| oldState |
	oldState := self model stateNamed: aBTRStateTransition sourceStateName.
	oldState transitions removeKey: aBTRStateTransition name.
	self transitions
		at: aBTRStateTransition name
		put: aBTRStateTransition.
	aBTRStateTransition sourceStateName: self name.
	self changed: #transitions.
	oldState changed: #transitions.
	^ aBTRStateTransition