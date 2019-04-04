private
soundWithSymbol: aSoundSymbol
	^soundsBySymbol at: aSoundSymbol ifAbsent: [self error: 'No sound found for: #',aSoundSymbol] copy
	