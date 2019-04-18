accessing
adjustColumnsTo: anInteger

	| oldColumnCount |
	oldColumnCount := self columnCount.
	oldColumnCount < anInteger 
		ifTrue: [self addColumnsToAdjustTo: anInteger]
		ifFalse: [self removeColumnsToAdjustTo: anInteger].