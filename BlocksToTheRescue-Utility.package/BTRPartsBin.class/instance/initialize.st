as yet unclassified
initialize

	super initialize.
	self 
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutPolicy: TableLayout new;
		layoutInset: 5;
		cellInset: 5;
	  	wrapCentering: #center