accessing
addTransition: aBTRStateTransition

	| transition |
	transition := self transitions
		at: aBTRStateTransition name
		put: aBTRStateTransition.
	self changed: #transitions.
	transition changed: #created with: self.
	^ transition