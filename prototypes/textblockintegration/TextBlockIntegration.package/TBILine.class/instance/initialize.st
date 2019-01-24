initialization
initialize 

	super initialize.
	self patches: OrderedCollection new.
	self 
		color: Color transparent;
		layoutPolicy: TableLayout new;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		assureTableProperties.
		
	self layoutProperties
		listDirection: #leftToRight.