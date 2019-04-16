initialization
blankColumnIndexCellMorph
	
	^ StringMorph new
		height: BTRTableCellMorph defaultCellHeight;
		width: BTRTableMorphPlus rowIndexCellWidth;
		color: Color transparent;
		contents: ''