running
transition: aSymbol

	(self currentState transitionNamed: aSymbol)
		in: [:transition | | newState oldState |
			newState := (self model stateNamed: transition targetStateName).
			oldState := self currentState.
			self isUnlocked ifTrue:  [
				oldState preLeave.
				newState preEnter.
				self currentState: newState.
				oldState postLeave.
				newState postEnter]].