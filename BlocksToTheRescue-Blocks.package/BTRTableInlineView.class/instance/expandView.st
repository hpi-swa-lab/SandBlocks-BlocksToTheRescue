actions
expandView

	self tableMorph abandon.
	self expandButton abandon.
	self
		initializeExpandMorphs;
		extent: self expandedExtent;
		addMorph: self tableMorphPlus fullFrame: self tableMorphPlusFrame;
		addMorph: self collapseButton fullFrame: self collapseButtonFrame;
		addMorph: self adjustmentRow fullFrame: self adjustmentRowFrame.