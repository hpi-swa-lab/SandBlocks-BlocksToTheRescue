accessing
at: rowIndex at: columnIndex putCell: aBTRCell

	(self rows at: rowIndex) at: columnIndex put: aBTRCell.
	(self columns at: columnIndex) at: rowIndex put: aBTRCell.