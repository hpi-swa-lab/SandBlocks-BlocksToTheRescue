initialization
initializeLayout

	self 
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		extent: self slider extent;
		cellInset: self inset;
		addMorphBack: self slider;
		addMorphBack: self expandButton.