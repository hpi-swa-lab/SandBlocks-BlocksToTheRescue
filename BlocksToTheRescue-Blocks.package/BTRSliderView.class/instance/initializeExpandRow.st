initialization
initializeExpandRow

	self expandRow: (Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap;
		height: 20;
		cellInset: 4;
		addMorph: (StringMorph contents: 'min:' translated);
		addMorphBack: self minTextField;
		addMorphBack: (StringMorph contents: 'max:' translated);
		addMorphBack: self maxTextField;
		addMorphBack: (StringMorph contents: 'step:' translated);
		addMorphBack: self quantumTextField;
		yourself)