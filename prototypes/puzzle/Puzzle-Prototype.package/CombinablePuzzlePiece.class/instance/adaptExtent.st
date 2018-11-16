as yet unclassified
adaptExtent

	self innerPiece ifNotNil: [:piece | self extent: piece extent + (2 * self class innerPieceOffset)].