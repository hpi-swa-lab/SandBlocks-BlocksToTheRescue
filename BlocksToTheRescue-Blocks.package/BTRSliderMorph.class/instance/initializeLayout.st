initialization
initializeLayout

	self 
		color: Color transparent;
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		extent: self defaultExtent;
		addMorphBack: self sliderRow;
		layoutInset: 4;
		cellInset: self inset.