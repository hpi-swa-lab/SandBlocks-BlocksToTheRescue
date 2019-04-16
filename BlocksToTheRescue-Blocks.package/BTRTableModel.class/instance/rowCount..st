accessing
rowCount: anInteger

	self rowCount ~= anInteger ifTrue: [self adjustRowsTo: anInteger].