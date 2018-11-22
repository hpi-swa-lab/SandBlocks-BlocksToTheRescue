as yet unclassified
initialize

	super initialize. 
	self 
		extent: PuzzlePiece defaultSize;
		color: Color transparent;
		borderWidth: 0;
		layoutPolicy: TableLayout new;
		assureTableProperties.
		
	self layoutProperties listDirection: #leftToRight.
	
	self 
		initializeSpacers;
		enableShrinkWrap.