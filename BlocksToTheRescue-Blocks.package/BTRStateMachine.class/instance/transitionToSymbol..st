running
transitionToSymbol: aSymbol

	^ (self currentState hasTransitionNamed: aSymbol)
		ifTrue: [ | transition newState |
			transition := self currentState transitionNamed: aSymbol.
			newState := (self model stateNamed: transition targetStateName).
			self transitionToState: newState via: aSymbol]
		ifFalse: [
			self handleUnknownTransition: aSymbol.
			self currentState].