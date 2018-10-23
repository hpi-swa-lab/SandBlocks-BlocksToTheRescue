initialize-release
initializeWrapperMorphs

	self levelWrapper: PasteUpMorph new.
	self levelWrapper 
		borderColor: Color transparent.
	self informationWrapper: PasteUpMorph new.
	self informationWrapper 
		layoutPolicy: TableLayout new;
		listDirection: #bottomToTop;
	  	wrapCentering: #topLeft;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderColor: Color transparent.
	self 
		addMorph: self levelWrapper;
		addMorph: self informationWrapper.