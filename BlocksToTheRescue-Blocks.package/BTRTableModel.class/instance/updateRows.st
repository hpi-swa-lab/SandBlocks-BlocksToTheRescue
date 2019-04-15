updating
updateRows

	| oldRowCount |
	oldRowCount := self rowCount.
	oldRowCount < self value rowCount 
		ifTrue: [self addRowsToAdjustToValue]
		ifFalse: [self removeRowsToAdjustToValue].