initialization
initializeLayoutProperties

	self 
		layoutPolicy: TableLayout new;
		assureTableProperties.
	self layoutProperties 
		listDirection: #topToBottom;
		listCentering: #bottomRight;
		cellPositioning: #topLeft.