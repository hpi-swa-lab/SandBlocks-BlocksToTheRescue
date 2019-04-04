actions
collapseView

	self sliderRow 
		removeMorph: self collapseButton;
		addMorphBack: self expandButton.
	self removeMorph: self expandRow.