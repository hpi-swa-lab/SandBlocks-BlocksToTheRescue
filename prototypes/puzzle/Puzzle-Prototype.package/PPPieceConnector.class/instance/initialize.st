initialization
initialize

	super initialize.
	self 
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutPolicy: TableLayout new;
		color: Color transparent;
		borderWidth: 1;
		borderColor: Color white.