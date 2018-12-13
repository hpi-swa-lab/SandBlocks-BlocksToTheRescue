as yet unclassified
visitPuzzlePiece: aCFGPuzzlePiece

	self options 
		ifEmpty: [^ aCFGPuzzlePiece code].
	
	self options first = aCFGPuzzlePiece code 
		ifTrue: [self options removeFirst].
	^ nil