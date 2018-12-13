as yet unclassified
firstBlocks

	^ self view submorphs select: [:each |
		(each isKindOf: GPBlockView)
			ifTrue: [each isStartPoint]
			ifFalse: [false]]