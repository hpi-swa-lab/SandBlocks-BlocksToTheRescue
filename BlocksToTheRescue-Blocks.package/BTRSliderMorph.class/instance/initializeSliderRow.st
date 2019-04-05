initialization
initializeSliderRow

	sliderRow := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap;
		cellInset: self inset;
		addMorphBack: self slider;
		addMorphBack: self expandButton.