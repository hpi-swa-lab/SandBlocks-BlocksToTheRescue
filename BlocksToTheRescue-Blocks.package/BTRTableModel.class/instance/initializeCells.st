initialize-release
initializeCells
	
	1 to: self rowCount do: [:rowIdx |
		1 to: self columnCount do: [:columnIdx | | cell |
			cell := BTRTableCell new.
			cell
				tableModel: self;
				rowIndex: rowIdx;
				columnIndex: columnIdx;
				value: (self value at: rowIdx at: columnIdx).
			self at: rowIdx at: columnIdx ifAbsentPutCell: cell]].