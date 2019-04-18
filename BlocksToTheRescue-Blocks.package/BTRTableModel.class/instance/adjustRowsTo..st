accessing
adjustRowsTo: anInteger

	| oldRowCount |
	oldRowCount := self rowCount.
	oldRowCount < anInteger 
		ifTrue: [self addRowsToAdjustTo: anInteger]
		ifFalse: [self removeRowsToAdjustTo: anInteger].