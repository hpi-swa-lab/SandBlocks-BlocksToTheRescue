initialization
initialize

	super initialize.
	self 
		buildPluggableText: self buildSpec;
		minimumHeight: 0;
		acceptOnCR: true;
		hideScrollBarsIndefinitely;
		height: BTRTableCellMorph defaultCellHeight;
		width: BTRTableCellMorph defaultCellWidth.