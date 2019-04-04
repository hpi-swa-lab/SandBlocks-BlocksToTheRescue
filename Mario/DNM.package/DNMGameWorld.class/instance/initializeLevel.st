initialization
initializeLevel
	self level: ((DNMLevel newWithSpecification: self levelSpecification)
		lowerBoundary: self height;
		createNewRandomLevel;
		yourself).
	self 
		buildLevel;
		initializeMario.
	
