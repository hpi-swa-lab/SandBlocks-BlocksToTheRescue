initialization
initializeLayout

	self
		color: Color veryLightGray;
		changeProportionalLayout;
		"changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 1;
		addMorphBack: self tableMorph;
		addMorphBack: self adjustmentRow."
		addMorph: self tableMorph fullFrame: self tableMorphFrame;
		addMorph: self adjustmentRow fullFrame: self adjustmentRowFrame.