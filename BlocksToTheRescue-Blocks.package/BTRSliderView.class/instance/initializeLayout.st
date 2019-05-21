initialization
initializeLayout

	self
		color: Color transparent;
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		extent: self defaultExtent;
		addMorphBack: self sliderRow;
		layoutInset: self defaultLayoutInset;
		cellInset: self defaultCellInset.