accessing
soundSymbol
	soundSymbol ifNil: [soundSymbol := #noSound].
	^soundSymbol