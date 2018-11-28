as yet unclassified
visitPuzzlePiece: aPPPuzzlePiece

	| oldColor |
	oldColor := aPPPuzzlePiece color.
	aPPPuzzlePiece color: self highlightColor.
	"self do da thing"
"	aPPPuzzlePiece color: oldColor."