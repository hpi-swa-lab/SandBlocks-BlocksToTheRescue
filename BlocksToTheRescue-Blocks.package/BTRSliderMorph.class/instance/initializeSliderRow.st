initialization
initializeSliderRow

	self sliderRow: (Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap;
		cellInset: self defaultCellInset;
		addMorphBack: self slider;
		addMorphBack: self expandButton;
		yourself).