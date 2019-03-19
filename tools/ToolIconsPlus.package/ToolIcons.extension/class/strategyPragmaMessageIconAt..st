*ToolIconsPlus-Strategies
strategyPragmaMessageIconAt: aMethodReference

	^ (aMethodReference compiledMethod pragmaAt: #messageIcon:at:)
		ifNotNil: [:pragma | self icon: (
			(Smalltalk classNamed: (pragma argumentAt: 2))
				perform: (pragma argumentAt: 1))]