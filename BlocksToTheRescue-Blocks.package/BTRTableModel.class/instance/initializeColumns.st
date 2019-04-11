initialize-release
initializeColumns
	
	columns := OrderedCollection new.
	1 to: self defaultColumnCount do: [:columnIndex | | column |
		column := BTRTableCollection new: self defaultRowCount.
		column index: columnIndex.
		columns add: column].