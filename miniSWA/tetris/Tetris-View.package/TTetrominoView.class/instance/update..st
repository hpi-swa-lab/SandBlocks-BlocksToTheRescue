as yet unclassified
update: aTTetromino

	(aTTetromino isKindOf: TTetromino)
		ifFalse: [^ self].
	
	self 
		position: aTTetromino gridPosition * TBlockView defaultWidth + self owner position;
		clearSubmorphs;
		addBlocksFrom: aTTetromino;
		shrinkWrap;
		deleteIfEmpty: aTTetromino.