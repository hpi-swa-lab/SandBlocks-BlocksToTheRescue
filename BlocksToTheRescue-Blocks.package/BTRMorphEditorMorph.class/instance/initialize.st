initialization
initialize

	super initialize.
	"self viewPort: BTRTiledBackgroundMorph new."
	self viewPort layoutPolicy: CenteredLayout new.
	self viewPort addDependent: self.
	self scroller addMorph: self viewPort.
	self showScrollBarsOnlyWhenNeeded.
	self dropEnabled: true.