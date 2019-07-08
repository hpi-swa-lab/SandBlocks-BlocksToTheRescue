initialization
initializeLayout

	self
		color: Color "veryLightGray" transparent;
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		extent: self defaultTableExtent;
		layoutInset: self class defaultLayoutInset;
		cellInset: self class defaultCellInset.