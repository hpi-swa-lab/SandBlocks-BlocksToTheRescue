removing
removeRowsToAdjustTo: anInteger

	[self rowCount > anInteger] whileTrue: [self removeRow].