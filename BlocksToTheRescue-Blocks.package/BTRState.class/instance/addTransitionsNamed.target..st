accessing
addTransitionsNamed: messageSymbolOrCollection target: targetStateSymbol

	^ messageSymbolOrCollection asOrderedCollection collect: [:messageName |
		self addTransitionNamed: messageName target: targetStateSymbol]