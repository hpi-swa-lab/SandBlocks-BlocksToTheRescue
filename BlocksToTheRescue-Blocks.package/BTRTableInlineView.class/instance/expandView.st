actions
expandView

	self 
		removeMorph: self tableMorph;
		removeMorph: self expandButton;
		initializeExpandMorphs;
		extent: self expandedExtent;
		addMorph: self tableMorphPlus fullFrame: self tableMorphPlusFrame;
		addMorph: self collapseButton fullFrame: self collapseButtonFrame;
		addMorph: self adjustmentRow fullFrame: self adjustmentRowFrame.