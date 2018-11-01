initialize-release
initializeButtonBar

	self 
		buttonBar: SOBButtonBar new.
	self buttonBar 
		setTargetFrame: self.
	self informationWrapper addMorph: self buttonBar.
	self informationWrapper bounds: self informationWrapper submorphBounds.