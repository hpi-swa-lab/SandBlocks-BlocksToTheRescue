initialization
initialize
	super initialize.
	self  
		layoutPolicy: TableLayout new;
 		listDirection: #leftToRight;
		vResizing: #shrinkWrap;
		cellInset: 10;
		color: Color midnight darker darker ;
		initializeScore;
		initializeHealth.