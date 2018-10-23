as yet unclassified
update: aTTetromino

	(aTTetromino isKindOf: TTetromino)
		ifFalse: [^ self].
	
	self 
		clearSubmorphs;
		addBlocksFrom: aTTetromino;
		shrinkWrap;
		position: aTTetromino gridPosition * TBlockView defaultWidth + self owner position;
		deleteIfEmpty: aTTetromino.