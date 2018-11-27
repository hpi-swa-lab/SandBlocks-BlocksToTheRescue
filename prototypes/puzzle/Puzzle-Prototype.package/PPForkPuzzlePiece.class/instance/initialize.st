initialization
initialize 

	super initialize.
	self
		condition: '2 atRandom = 1';
		initializeSpacers;
		initializeBranches;
		initializeLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.