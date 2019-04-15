initialization
initializeRows
	
	rows := OrderedCollection new.
	1 to: self value rowCount do: [:rowIndex | | row |
		row := BTRTableCollection new: self value columnCount.
		row index: rowIndex.
		rows add: row].