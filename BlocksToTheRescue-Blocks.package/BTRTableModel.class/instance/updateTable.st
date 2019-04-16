updating
updateTable

	self rowCount ~= self value rowCount ifTrue: [self updateRows].
	self columnCount ~= self value columnCount ifTrue: [self updateColumns].
	self updateCells.