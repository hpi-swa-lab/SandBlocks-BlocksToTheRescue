accessing - value
valueAddColumn

	| matrix |
	matrix := Matrix rows: self rowCount columns: self columnCount.
	matrix atRows: 1 to: self rowCount columns: 1 to: self columnCount - 1 put: self value.
	self setValue: matrix.