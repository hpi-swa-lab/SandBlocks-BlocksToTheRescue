running
handle: changeSymbol on: aBTRStateMachine via: transitionName

	^ ((changeSymbol asString, 'Handler') asSymbol value: self)
		ifNotNil: [:handler |
			handler valueWithPossibleArgs: {
				self.
				transitionName.
				aBTRStateMachine. 
				changeSymbol}]