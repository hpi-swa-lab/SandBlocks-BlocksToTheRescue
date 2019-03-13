coloring
colorsUpTo: depth mode: aSymbol

	| colors |
	colors := Color white asOrderedCollection.
	(depth <= 0) ifFalse: [colors addAll: (
		self perform: (aSymbol asString, 'UpTo:') asSymbol with: depth - 1)].
	^ colors