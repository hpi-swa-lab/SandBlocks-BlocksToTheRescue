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
		pourGlue;
		fullBounds;
		bounds: self submorphBounds.