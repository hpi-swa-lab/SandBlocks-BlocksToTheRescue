building
build

	^ self
		buildFrame; 
		addInformation;
		populateTiles;
		level