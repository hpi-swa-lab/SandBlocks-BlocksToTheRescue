layout
doLayoutIn: newBounds

	self viewPort extent: (self value fullBounds extent + self border  max: newBounds extent). 
	super doLayoutIn: newBounds.