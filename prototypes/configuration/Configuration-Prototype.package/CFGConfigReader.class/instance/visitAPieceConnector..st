as yet unclassified
visitAPieceConnector: aCFGPieceConnector

	| result |
	(self options isEmpty and: [aCFGPieceConnector isTerminated not])
		ifTrue: [^ self accumulateListFrom: aCFGPieceConnector].
	result := self visit: aCFGPieceConnector puzzlePiece.
	^ (result isNil and: [aCFGPieceConnector isTerminated not])
		ifTrue: [self visit: aCFGPieceConnector followingConnector]
		ifFalse: [result]