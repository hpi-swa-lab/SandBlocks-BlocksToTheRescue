accessing
addTransitionNamed: messageSymbol target: targetStateSymbol action: aBlockOrSymbol

	^ self addTransition: (BTRStateTransition named: messageSymbol target: targetStateSymbol action: aBlockOrSymbol)