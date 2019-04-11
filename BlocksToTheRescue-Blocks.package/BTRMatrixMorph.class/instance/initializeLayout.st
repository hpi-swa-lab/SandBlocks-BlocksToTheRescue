initialization
initializeLayout

	self
		color: Color transparent;
		extent: self defaultExtent;
		changeProportionalLayout;
		addMorph: self table fullFrame: self tableFrame;
		addMorph: self expandButton fullFrame: self expandButtonFrame.