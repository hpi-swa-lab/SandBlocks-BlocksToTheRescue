initialization
newRow

	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill; 
		vResizing: #spaceFill;
		cellInset: self defaultCellInset