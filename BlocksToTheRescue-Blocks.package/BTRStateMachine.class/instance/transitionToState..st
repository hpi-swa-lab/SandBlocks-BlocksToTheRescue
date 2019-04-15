running
transitionToState: aBTRState

	| oldState |
	oldState := self currentState.
	oldState ifNotNil: [oldState preLeave].
	aBTRState preEnter.
	self currentState: aBTRState.
	oldState ifNotNil: [oldState postLeave].
	aBTRState postEnter.
	^ aBTRState