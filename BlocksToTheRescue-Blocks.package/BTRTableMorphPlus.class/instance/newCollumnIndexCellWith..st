initialization
newCollumnIndexCellWith: columnIndex

	^ StringMorph new
		height: BTRTableCellMorph defaultCellHeight;
		width: BTRTableCellMorph defaultCellWidth;
		color: Color lightGray;
		contents: columnIndex