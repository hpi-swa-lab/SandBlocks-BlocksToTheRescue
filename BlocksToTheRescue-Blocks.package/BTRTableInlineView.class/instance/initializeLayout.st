initialization
initializeLayout
	
	self
		color: Color transparent;
		extent: self collapsedExtent;
		changeProportionalLayout;
		addMorph: self tableMorph fullFrame: self tableMorphFrame;
		addMorph: self expandButton fullFrame: self expandButtonFrame.