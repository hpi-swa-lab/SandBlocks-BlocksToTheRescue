as yet unclassified
update: aTPlayField

	(aTPlayField isKindOf: TPlayfield)
		ifFalse: [^ self].
	
	self 
		clearBlocks;
		addBlocksFrom: aTPlayField;
		updateTetromino: aTPlayField;
		checkForGameOver: aTPlayField.