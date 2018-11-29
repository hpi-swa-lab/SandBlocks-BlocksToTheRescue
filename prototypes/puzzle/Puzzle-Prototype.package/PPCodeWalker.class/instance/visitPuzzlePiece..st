as yet unclassified
visitPuzzlePiece: aPPPuzzlePiece
	
	self stack pop.
	self highlight: aPPPuzzlePiece.
	Compiler evaluate: aPPPuzzlePiece code.
	self increaseInstructionPointer.