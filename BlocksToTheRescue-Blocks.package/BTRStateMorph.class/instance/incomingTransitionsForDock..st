accessing
incomingTransitionsForDock: aSymbol

	^ (self dockedTransitions select: [:transition | 
			transition sourceStateName = self state name and: 
				[(self stateMachineMorph morphForTransition: transition) endDock = aSymbol]]) asSet