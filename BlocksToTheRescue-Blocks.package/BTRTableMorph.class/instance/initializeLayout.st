initialization
initializeLayout

	self
		color: Color transparent;
		changeTableLayout;
		hResizing: #shrinkWrap "#spaceFill";
		vResizing: #shrinkWrap;
		extent: self defaultTableExtent;
		layoutInset: self class defaultLayoutInset;
		cellInset: self class defaultCellInset.