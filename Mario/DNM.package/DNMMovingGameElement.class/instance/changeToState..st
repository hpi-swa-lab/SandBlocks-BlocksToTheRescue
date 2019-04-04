accessing
changeToState: newState
	(newState ~= self state)
		ifTrue:
			[state ifNotNil: [state onExit].
			state := DNMStateFactory singleton create: newState for: self.
			state onEnter.
			self adjustToState].