as yet unclassified
testAllColorConstants

	Color methodDict keysDo: [ :messageSymbol |
		| shouldBeColorConstant |
		shouldBeColorConstant := Color colorNames includes: messageSymbol.
		self assert: (Color isColorConstant: messageSymbol) equals: shouldBeColorConstant].