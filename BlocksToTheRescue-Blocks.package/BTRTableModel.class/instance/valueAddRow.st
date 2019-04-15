accessing - value
valueAddRow

	| matrix |
	matrix := Matrix rows: self rowCount columns: self columnCount.
	matrix atRows: 1 to: self rowCount - 1 columns: 1 to: self columnCount put: self value.
	self value: matrix.