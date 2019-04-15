updating
addColumnToAdjustToValue

	| column columnIdx |
	column := BTRTableCollection new: self rowCount.
	columnIdx := self columnCount + 1.
	column index: columnIdx.
	self columns add: column.
	1 to: self rowCount do: [:rowIdx | | cell |
		cell := BTRTableCell new.
		cell
			tableModel: self;
			rowIndex: rowIdx;
			columnIndex: columnIdx.
		self at: rowIdx at: columnIdx ifAbsentPutCell: cell].