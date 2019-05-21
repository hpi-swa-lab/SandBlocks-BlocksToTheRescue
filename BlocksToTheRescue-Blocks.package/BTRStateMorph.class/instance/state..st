accessing
state: aBTRState
	state removeDependent: self.
	state := aBTRState.
	state addDependent: self.