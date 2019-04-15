updating
addRowToAdjustToValue

	| row rowIdx |
	row := BTRTableCollection new: self columnCount.
	rowIdx := self rowCount + 1.
	row index: rowIdx.
	self rows add: row.
	1 to: self columnCount do: [:columnIdx | | cell |
		cell := BTRTableCell new.
		cell
			tableModel: self;
			rowIndex: rowIdx;
			columnIndex: columnIdx.
		self at: rowIdx at: columnIdx ifAbsentPutCell: cell].