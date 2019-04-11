initialize-release
initializeCells
	
	1 to: self defaultRowCount do: [:rowIdx |
		1 to: self defaultColumnCount do: [:columnIdx | | cell |
			cell := BTRTableCell new.
			cell
				rowIndex: rowIdx;
				columnIndex: columnIdx.
			self at: rowIdx at: columnIdx ifAbsentPutCell: cell]].