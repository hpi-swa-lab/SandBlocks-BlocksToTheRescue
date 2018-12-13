initialization
initialize

	super initialize. 
	self 
		extent: CFGPuzzlePiece defaultSize;
		color: Color transparent;
		borderWidth: 0;
		layoutPolicy: TableLayout new;
		assureTableProperties.
		
	self layoutProperties listDirection: #leftToRight.
	
	self 
		initializeSpacers;
		enableShrinkWrap.