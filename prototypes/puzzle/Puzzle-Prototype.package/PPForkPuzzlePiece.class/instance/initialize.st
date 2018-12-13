initialization
initialize 
	
	super initialize.
	self
		code: '2 atRandom = 1';
		initializeBranches;
		initializeLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.