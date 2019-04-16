adding
addRowsToAdjustTo: anInteger

	[self rowCount < anInteger] whileTrue: [self addRow].