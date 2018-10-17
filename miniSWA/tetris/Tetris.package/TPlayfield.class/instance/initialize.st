initialization
initialize 

	super initialize.
	self
		borderWidth: 0;
		extent: self class defaultExtent;
		initializeGrid;
		spawnTetromino;
		startStepping