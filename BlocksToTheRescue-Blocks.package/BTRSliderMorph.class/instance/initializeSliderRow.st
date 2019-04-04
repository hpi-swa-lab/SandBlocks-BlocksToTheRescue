initialization
initializeSliderRow

	sliderRow := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap;
		"height: 20;"
		"extent: self slider extent;"
		cellInset: self inset;
		addMorphBack: self slider;
		addMorphBack: self expandButton.