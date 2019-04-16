running
handle: changeSymbol temporal: temporalSymbol on: aBTRStateMachine via: transitionName

	^ ((temporalSymbol asString, ' state ', changeSymbol asString, ' handler') asCamelCase asLegalSelector asSymbol
		value: self) ifNotNil: [:handler |
			handler valueWithPossibleArgs: {
				self.
				transitionName.
				aBTRStateMachine. 
				(temporalSymbol asString, changeSymbol asString withFirstCharacterUppercase) asSymbol}]