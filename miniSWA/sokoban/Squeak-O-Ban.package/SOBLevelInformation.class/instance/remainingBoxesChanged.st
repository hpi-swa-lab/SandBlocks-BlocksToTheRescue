updating
remainingBoxesChanged 

	self changed: #remainingBoxes with: self remainingBoxes.
	self remainingBoxes isZero ifTrue: [self changed: #solved].
	self updateScore.