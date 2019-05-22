accessing
addTransitionNamed: messageSymbol target: targetStateSymbol action: aBlockOrSymbol

	^ self addTransition: (BTRStateTransition
		named: messageSymbol
		source: self name
		target: targetStateSymbol
		action: aBlockOrSymbol)