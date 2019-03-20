as yet unclassified
testAllColorIcons

	Color methodDict keysDo: [ :messageSymbol |
		| hasColorIcon |
		hasColorIcon := Color colorNames includes: messageSymbol.
		self assert: hasColorIcon = (Color metaToolIconSelector: messageSymbol) isForm].