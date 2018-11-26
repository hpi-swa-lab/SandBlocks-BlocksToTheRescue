initialization
initialize 

	super initialize.
	self
		initializeSpacers;
		initializeBranches;
		initializeLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.