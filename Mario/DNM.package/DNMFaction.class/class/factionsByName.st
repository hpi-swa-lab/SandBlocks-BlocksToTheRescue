accesing
factionsByName
	FactionsByName ifNil: [self initializeFactions].
	^FactionsByName