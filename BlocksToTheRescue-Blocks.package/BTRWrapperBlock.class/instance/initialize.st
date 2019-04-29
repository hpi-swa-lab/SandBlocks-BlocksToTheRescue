initialization
initialize

	super initialize.
	self 
		borderStyle: (BorderStyle inset width: 5);
		color: Color transparent;
		layoutPolicy: TableLayout new;
		layoutInset: 2;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap.