accessing
addTransitionsNamed: messageSymbolOrCollection from: stateSymbolOrCollection to: targetStateSymbol

	^ stateSymbolOrCollection asOrderedCollection collect: [:stateName |
		(self stateNamed: stateName)
			addTransitionsNamed: messageSymbolOrCollection
			target: targetStateSymbol]