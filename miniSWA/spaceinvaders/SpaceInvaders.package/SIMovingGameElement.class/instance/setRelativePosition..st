nil
setRelativePosition: aPosition
	
	self position: (aPosition - self extent + (self width/2 @ 0)).