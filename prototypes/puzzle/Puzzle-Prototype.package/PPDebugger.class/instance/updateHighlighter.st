as yet unclassified
updateHighlighter

	| codeToHighlight |
	self highlighter openInWorld.
	codeToHighlight := self codeWalker instructionPointer puzzlePiece.
	highlighter position: codeToHighlight position.
	highlighter extent: codeToHighlight extent.