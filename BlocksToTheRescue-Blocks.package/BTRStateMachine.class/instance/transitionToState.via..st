running
transitionToState: aBTRState via: transitionName

	| oldState transition result |
	result := aBTRState.
	oldState := self currentState.
	transition := nil.
	oldState ifNotNil: [
		transition := self currentState transitionNamed: transitionName ifAbsent: [nil].
		oldState preLeave: self via: transitionName].
	aBTRState preEnter: self via: transitionName.
	
	transition ifNotNil: [result := transition transitionActionOn: self managedObject].
	
	self currentState: aBTRState.
	oldState ifNotNil: [oldState postLeave: self via: transitionName].
	aBTRState postEnter: self via: transitionName.
	^ result