running
transitionToState: aBTRState via: transitionName

	| oldState |
	oldState := self currentState.
	oldState ifNotNil: [oldState preLeave: self via: transitionName].
	aBTRState preEnter: self via: transitionName.
	self currentState: aBTRState.
	oldState ifNotNil: [oldState postLeave: self via: transitionName].
	aBTRState postEnter: self via: transitionName.
	^ aBTRState