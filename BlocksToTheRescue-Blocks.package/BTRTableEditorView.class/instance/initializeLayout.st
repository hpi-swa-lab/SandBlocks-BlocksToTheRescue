initialization
initializeLayout

	self
		color: Color veryLightGray;
		changeProportionalLayout;
		addMorph: self tableMorph fullFrame: self tableMorphFrame;
		addMorph: self adjustmentRow fullFrame: self adjustmentRowFrame.