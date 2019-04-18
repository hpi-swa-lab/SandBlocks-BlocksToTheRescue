initialization
initialize

	super initialize.
	self 
		buildPluggableText: self buildSpec;
		minimumHeight: 0;
		acceptOnCR: true;
		hideScrollBarsIndefinitely;
		height: BTRTableCellMorph defaultCellHeight;
		width: BTRTableCellMorph defaultCellWidth;
		acceptAction: [:newContents | self cellModel accept];
		editTextSelector: #valueExpression:;
		wantsFrameAdornments: false.