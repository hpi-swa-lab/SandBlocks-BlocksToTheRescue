as yet unclassified
firstBlocks

	^ self submorphs select: [:each |
		((each isKindOf: GPBlockView) and: [(each isKindOf: GPParallelBlockView) not]) 
			ifTrue: [each isStartPoint]
			ifFalse: [false]]