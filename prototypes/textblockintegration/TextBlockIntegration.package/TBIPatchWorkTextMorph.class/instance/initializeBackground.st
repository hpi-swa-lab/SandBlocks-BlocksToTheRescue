as yet unclassified
initializeBackground

	self background: Morph new.
	self background
		extent: 1000 @ 1000;
		color: Color gray;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutPolicy: TableLayout new;
		assureTableProperties.
		
	self background layoutProperties 
		listDirection: #topToBottom;
		cellPositioning: #topLeft.