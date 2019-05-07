accessing
addTransition: aBTRStateTransition

	^ self transitions
		at: aBTRStateTransition name
		put: aBTRStateTransition