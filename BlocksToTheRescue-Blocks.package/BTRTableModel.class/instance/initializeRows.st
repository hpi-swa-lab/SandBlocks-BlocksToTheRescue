initialize-release
initializeRows
	
	rows := OrderedCollection new.
	1 to: self defaultRowCount do: [:rowIndex | | row |
		row := BTRTableCollection new: self defaultColumnCount.
		row index: rowIndex.
		rows add: row].