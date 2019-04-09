initialization
initializeTableLayout

	self table
		color: Color veryLightGray;
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		extent: self defaultTableExtent;
		layoutInset: self defaultLayoutInset;
		cellInset: self defaultCellInset.