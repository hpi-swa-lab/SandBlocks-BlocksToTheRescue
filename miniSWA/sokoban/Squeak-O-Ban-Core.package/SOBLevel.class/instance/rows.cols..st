initialize-release
rows: rowNumber cols: colNumber

	self tiles: (Matrix 
		rows: rowNumber 
		columns: colNumber).
		
	self tiles indicesDo: [:row :col |
		self atCol: col atRow: row put: SOBTile new].
		