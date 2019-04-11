layout
doLayoutIn: newBounds

	self viewPort extent: (self value extent + self border  max: newBounds extent). 
	super doLayoutIn: newBounds.