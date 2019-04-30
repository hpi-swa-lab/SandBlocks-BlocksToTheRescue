accessing
origin: aSymbol

	(#(topLeft topCenter topRight
	 leftCenter center rightCenter
	 bottomLeft bottomCenter bottomRight)
	includes: aSymbol)
		ifFalse: [self error: 'invalid origin "', aSymbol, '"'].
	origin := aSymbol.
	self changed.