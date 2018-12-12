as yet unclassified
firstBlocks

	^ self view submorphs select: [:each |
		(each isKindOf: BlockView)
			ifTrue: [each isStartPoint]
			ifFalse: [false]]