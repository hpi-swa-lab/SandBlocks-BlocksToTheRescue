copying
copyColumns

	1 to: self rowCount do: [:rowIdx |
		1 to: self columnCount do: [:columnIdx |
			(self columns at: columnIdx) 
				at: rowIdx 
				put: ((self rows at: rowIdx) at: columnIdx)]].