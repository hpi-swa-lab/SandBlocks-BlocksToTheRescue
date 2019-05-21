accessing
state: aBTRState
	self removeDependent: aBTRState.
	state := aBTRState.
	self addDependent: aBTRState.