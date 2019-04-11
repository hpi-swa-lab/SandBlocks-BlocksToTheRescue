initialization
initializeLayout

	self
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap;
		cellInset: BTRTableMorph defaultCellInset.