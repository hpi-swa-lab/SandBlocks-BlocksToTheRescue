running
transitionToSymbol: aSymbol

	(self currentState hasTransitionNamed: aSymbol)
		ifTrue: [(self currentState transitionNamed: aSymbol)
			in: [:transition | | newState |
				newState := (self model stateNamed: transition targetStateName).
				(self isTransitionUnlocked: transition)
					ifTrue: [^ self transitionToState: newState]]]
		ifFalse: [self handleUnknownTransition: aSymbol].
	^ self currentState