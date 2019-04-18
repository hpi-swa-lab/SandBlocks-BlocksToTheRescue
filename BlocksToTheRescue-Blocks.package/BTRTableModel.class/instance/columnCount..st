accessing
columnCount: anInteger

	self columnCount ~= anInteger ifTrue: [self adjustColumnsTo: anInteger].