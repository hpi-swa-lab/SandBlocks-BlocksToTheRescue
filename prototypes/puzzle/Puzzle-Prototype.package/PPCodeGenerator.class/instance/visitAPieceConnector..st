accessing
visitAPieceConnector: aPPPieceConnector

	^ (self visit: aPPPieceConnector puzzlePiece), (self visitFollowing: aPPPieceConnector)