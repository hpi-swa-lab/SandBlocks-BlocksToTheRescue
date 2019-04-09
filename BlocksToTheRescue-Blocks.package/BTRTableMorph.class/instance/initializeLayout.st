initialization
initializeLayout

	self
		color: Color veryLightGray;
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		extent: self defaultExtent;
		layoutInset: self defaultLayoutInset;
		cellInset: self defaultCellInset.
		"layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapCentering: #topLeft;
		wrapDirection: #topToBottom."