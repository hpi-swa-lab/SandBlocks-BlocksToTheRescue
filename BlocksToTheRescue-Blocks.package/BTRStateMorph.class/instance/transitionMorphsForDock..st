accessing
transitionMorphsForDock: aSymbol

	^ self dockedTransitionMorphs
		select: [:transitionMorph |
			(transitionMorph startDock = aSymbol)
			or: [transitionMorph endDock = aSymbol]]