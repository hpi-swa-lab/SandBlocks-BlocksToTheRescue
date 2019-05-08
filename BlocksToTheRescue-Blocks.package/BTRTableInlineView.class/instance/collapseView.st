actions
collapseView

	self tableMorphPlus abandon.
	self collapseButton abandon.
	self adjustmentRow abandon.
	self
		initializeTableMorph;
		extent: self collapsedExtent;
		addMorph: self tableMorph fullFrame: self tableMorphFrame;
		addMorph: self expandButton fullFrame: self expandButtonFrame.