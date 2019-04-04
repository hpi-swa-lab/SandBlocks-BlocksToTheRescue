actions
expandView

	self sliderRow 
		removeMorph: self expandButton;
		addMorphBack: self collapseButton.
	self addMorphBack: self expandRow.
	