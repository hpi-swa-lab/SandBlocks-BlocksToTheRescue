geometry
width: newWidth
	super width: newWidth.
	self ui ifNotNil: [self ui width: (self width)].
	self background ifNotNil: [self background width: (self width)].