initialization
initializeLayout

	self
		color: Color transparent;
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: self defaultLayoutInset;
		cellInset: BTRTableMorph defaultCellInset;
		addMorphBack: self tableMorph.