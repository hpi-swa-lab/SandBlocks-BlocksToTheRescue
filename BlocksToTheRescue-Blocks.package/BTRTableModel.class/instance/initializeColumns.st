initialization
initializeColumns
	
	columns := OrderedCollection new.
	1 to: self value columnCount do: [:columnIndex | | column |
		column := BTRTableCollection new: self value rowCount.
		column index: columnIndex.
		columns add: column].