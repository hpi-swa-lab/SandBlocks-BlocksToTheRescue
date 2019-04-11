accessing
at: rowIndex at: columnIndex ifAbsentPutCell: aBTRCell

	"If the cell at index does not exist (nil or out of bounds) then 
	add aBTRCell at index"

	(self rows at: rowIndex) at: columnIndex ifAbsentPutCell: aBTRCell.
	(self columns at: columnIndex) at: rowIndex ifAbsentPutCell: aBTRCell.