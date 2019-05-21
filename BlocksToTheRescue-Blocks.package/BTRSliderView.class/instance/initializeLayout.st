initialization
initializeLayout

	self
		color: self backgroundColor;
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		extent: self defaultExtent;
		addMorphBack: self sliderRow;
		layoutInset: self defaultLayoutInset;
		cellInset: self defaultCellInset.