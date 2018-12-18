as yet unclassified
initializeLayout

	self 
		layoutPolicy: TableLayout new;
		assureTableProperties.
		
	self layoutProperties listDirection: #leftToRight.
	self 
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.