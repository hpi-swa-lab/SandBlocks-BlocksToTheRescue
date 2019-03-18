coloring
colorsUpTo: depth mode: aSymbol

	^ (depth <= 0)
		ifTrue: [Color utmostBracketColor asOrderedCollection]
		ifFalse: [self perform: (aSymbol asString, 'UpTo:') asSymbol with: depth]