running
handle: changeSymbol temporal: temporalSymbol on: aBTRStateMachine via: transitionName

	^ ((temporalSymbol asString, 'State', changeSymbol asString withFirstCharacterUppercase, 'Handler') asSymbol
		value: self) ifNotNil: [:handler |
			handler valueWithPossibleArgs: {
				self.
				transitionName.
				aBTRStateMachine. 
				(temporalSymbol asString, changeSymbol asString withFirstCharacterUppercase) asSymbol}]