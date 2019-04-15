initialization
initialize

	super initialize.
	self viewPort layoutPolicy: (CenteredLayout new useFullBounds: true).
	self viewPort addDependent: self.
	self scroller addMorph: self viewPort.
	self showScrollBarsOnlyWhenNeeded.
	self dropEnabled: true.