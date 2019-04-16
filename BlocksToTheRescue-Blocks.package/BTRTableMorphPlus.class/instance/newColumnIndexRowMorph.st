initialization
newColumnIndexRowMorph

	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill; 
		vResizing: #spaceFill;
		cellInset: BTRTableMorph defaultCellInset;
		yourself