initialize-release
rows: rowNumber cols: colNumber

	self tiles: (Matrix 
		rows: rowNumber 
		columns: colNumber
		tabulate: [:row :col | SOBTile new])
		