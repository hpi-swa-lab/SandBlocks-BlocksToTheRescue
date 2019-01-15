as yet unclassified
initialize 

	super initialize.
	self 
		color: Color seaFoam;
		layoutPolicy: TableLayout new;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		assureTableProperties.
	self layoutProperties listDirection: #leftToRight.