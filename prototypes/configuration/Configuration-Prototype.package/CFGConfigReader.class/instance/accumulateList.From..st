visiting
accumulateList: anOrderedCollection From: aCFGPieceConnector
	
	anOrderedCollection addLast: (self visit: aCFGPieceConnector puzzlePiece).
	^ (aCFGPieceConnector isTerminated)
		ifTrue: [anOrderedCollection]
		ifFalse: [self accumulateList: anOrderedCollection From: aCFGPieceConnector followingConnector]