updating
updateCells

	1 to: self rowCount do: [:rowIdx |
		1 to: self columnCount do: [:columnIdx | 
			self at: rowIdx at: columnIdx putValue: (self value at: rowIdx at: columnIdx)]].