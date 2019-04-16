adding
addColumnsToAdjustTo: anInteger

	[self columnCount < anInteger] whileTrue: [self addColumn].