initialization
initializeAdjustmentRow
		
	adjustmentRow := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap;
		height: 20;
		cellInset: 4;
		addMorph: (StringMorph contents: 'rows:' translated);
		addMorphBack: self rowTextField;
		addMorphBack: (StringMorph contents: 'columns:' translated);
		addMorphBack: self columnTextField.