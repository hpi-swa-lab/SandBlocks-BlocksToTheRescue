updating
movesChanged 

	self changed: #moves with: self moves.
	self moves >= self maximumMoves ifTrue: [self changed: #failed].
	self updateScore.