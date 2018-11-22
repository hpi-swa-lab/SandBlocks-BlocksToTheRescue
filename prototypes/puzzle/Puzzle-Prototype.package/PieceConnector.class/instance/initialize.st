accessing
initialize

	super initialize.
	self 
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutPolicy: TableLayout new;
		color: Color transparent.