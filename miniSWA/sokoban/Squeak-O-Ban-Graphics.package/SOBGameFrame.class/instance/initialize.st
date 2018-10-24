initialize-release
initialize 

	super initialize.
	self
		initializeLayout;
		initializeWrapperMorphs;
		initializeInformationMorph; 
		initializeOverlay;
		initializeButtonBar;
		initializeDefaultLevels;
		fullBounds;
		bounds: self submorphBounds.