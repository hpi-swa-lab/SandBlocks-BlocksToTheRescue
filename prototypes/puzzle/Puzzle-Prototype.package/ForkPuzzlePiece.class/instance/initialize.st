as yet unclassified
initialize 

	super initialize.
	self
		initializeSpacers;
		initializeBranches;
		initializeLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.