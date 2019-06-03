accessing
outgoingTransitionsForDock: aSymbol

	^ (self dockedTransitions select: [:transition | 
			transition sourceStateName = self state name and: 
				[(self stateMachineMorph morphForTransition: transition) startDock = aSymbol]]) asSet