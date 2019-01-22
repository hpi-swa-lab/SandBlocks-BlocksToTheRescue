as yet unclassified
generateGenericBlock: statement

	^ PPPuzzlePiece create
		code: (self codeStringFor: statement);
		yourself