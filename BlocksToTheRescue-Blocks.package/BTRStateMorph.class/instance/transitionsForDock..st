accessing
transitionsForDock: aSymbol

	^ (self dockedTransitions
		select: [:transition | | morph |
			morph := self stateMachineMorph morphForTransition: transition.
			(morph startDock = aSymbol) or: [morph endDock = aSymbol]])