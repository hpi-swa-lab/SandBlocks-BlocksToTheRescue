*ToolIconsPlus
metaToolIconSelector: aSelector

	((self class methodsInCategory: #constants)
		includes: aSelector)
		ifTrue: [^ (self perform: aSelector) asCursorForm].