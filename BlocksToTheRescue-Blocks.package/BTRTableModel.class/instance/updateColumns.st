updating
updateColumns

	| oldColumnCount |
	oldColumnCount := self columnCount.
	oldColumnCount < self value columnCount 
		ifTrue: [self addColumnsToAdjustToValue]
		ifFalse: [self removeColumnsToAdjustToValue].