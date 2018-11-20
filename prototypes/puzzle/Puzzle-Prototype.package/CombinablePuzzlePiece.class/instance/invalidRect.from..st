as yet unclassified
invalidRect: aRectangle from: aMorph

	aMorph == self innerPiece
		ifTrue: [self adaptExtent].
	
	super invalidRect: aRectangle from: aMorph.