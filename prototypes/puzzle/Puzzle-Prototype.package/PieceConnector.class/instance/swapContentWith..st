as yet unclassified
swapContentWith: aPieceConnector

	| followingPiece puzzlePiece |
	followingPiece := self followingPiece.
	puzzlePiece := self puzzlePiece.
	self puzzlePiece: aPieceConnector puzzlePiece.
	self followingPiece: aPieceConnector followingPiece.
	aPieceConnector puzzlePiece: puzzlePiece.
	aPieceConnector followingPiece: followingPiece.
