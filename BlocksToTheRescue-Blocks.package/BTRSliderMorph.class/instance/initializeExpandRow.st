initialization
initializeExpandRow

	expandRow := Morph new
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
		addMorphBack: (StringMorph contents: 'quantum:' translated);
		addMorphBack: self quantumTextField.