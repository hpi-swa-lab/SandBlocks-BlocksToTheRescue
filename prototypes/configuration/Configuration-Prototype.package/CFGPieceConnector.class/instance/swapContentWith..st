linked list
swapContentWith: aPieceConnector

	| followingConnector puzzlePiece |
	followingConnector := self followingConnector.
	puzzlePiece := self puzzlePiece.

	self puzzlePiece: aPieceConnector puzzlePiece.
	self followingConnector: aPieceConnector followingConnector.

	aPieceConnector puzzlePiece: puzzlePiece.
	aPieceConnector followingConnector: followingConnector.
