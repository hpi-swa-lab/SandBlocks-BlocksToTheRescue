initialization
newIndexCellMorph

	^ StringMorph new
		height: BTRTableCellMorph defaultCellHeight;
		width: BTRTableMorphPlus rowIndexCellWidth;
		color: Color lightGray;
		contents: self index asString