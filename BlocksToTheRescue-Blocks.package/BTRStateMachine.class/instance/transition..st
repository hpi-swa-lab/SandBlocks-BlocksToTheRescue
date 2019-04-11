running
transition: aSymbol

	(self currentState hasTransitionNamed: aSymbol)
		ifTrue: [(self currentState transitionNamed: aSymbol)
			in: [:transition | | newState oldState |
				newState := (self model stateNamed: transition targetStateName).
				oldState := self currentState.
				(self isTransitionUnlocked: transition) ifTrue:  [
					oldState preLeave.
					newState preEnter.
					self currentState: newState.
					oldState postLeave.
					newState postEnter]]
				]
		ifFalse: [self handleUnknownTransition: aSymbol].