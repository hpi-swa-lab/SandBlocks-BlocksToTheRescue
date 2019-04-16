removing
removeColumnsToAdjustTo: anInteger

	[self columnCount > anInteger] whileTrue: [self removeColumn].