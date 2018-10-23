as yet unclassified
calculateScore 

	^ (self remainingMoves / (self remainingBoxes + 1) * self scoreFactor) asInteger.