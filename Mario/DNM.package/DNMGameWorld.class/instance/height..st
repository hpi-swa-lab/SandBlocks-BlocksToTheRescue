geometry
height: newHeight
	super height: newHeight.
	self ui ifNotNil: [self ui height: (self height)].
	self background ifNotNil: [self background height: (self height)].