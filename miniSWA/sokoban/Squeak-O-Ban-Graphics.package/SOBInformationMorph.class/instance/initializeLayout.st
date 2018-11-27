initialize-release
initializeLayout

	self 
		layoutPolicy: TableLayout new;
		listDirection: #bottomToTop;
	  	wrapCentering: #justified;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: Color transparent.