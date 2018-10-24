initialize-release
initializeInformationWrapper

	self informationWrapper: PasteUpMorph new.
	self informationWrapper 
		layoutPolicy: TableLayout new;
		listDirection: #bottomToTop;
	  	wrapCentering: #topLeft;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderColor: Color transparent.
	self	addMorph: self informationWrapper.