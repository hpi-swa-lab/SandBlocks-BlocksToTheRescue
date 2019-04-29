utility
handleSymbol: anESymbol at: i and: j

	anESymbol = nil
			ifTrue: [^ self completeAt: i and: j].
	anESymbol isTerminal 
			ifTrue: [^ self scanAt: i and: j symbol: anESymbol].
	anESymbol isNonTerminal
			ifTrue: [^ self predictAt: i and: j symbol: anESymbol].
	
	self error: 'Illegal rule'.