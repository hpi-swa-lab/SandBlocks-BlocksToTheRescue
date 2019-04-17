actions
collapseView

	self 
		removeMorph: self tableMorphPlus;
		removeMorph: self collapseButton;
		removeMorph: self adjustmentRow;
		initializeTableMorph;
		extent: self collapsedExtent;
		addMorph: self tableMorph fullFrame: self tableMorphFrame;
		addMorph: self expandButton fullFrame: self expandButtonFrame.