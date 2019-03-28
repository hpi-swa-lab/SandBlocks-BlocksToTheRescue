initialization
initialize

	super initialize.
	self 
		layoutPolicy: BTRGraphLayout new;
		nodeViews: IdentityDictionary new;
		edgeViews: IdentityDictionary new;
		initializeGraph.