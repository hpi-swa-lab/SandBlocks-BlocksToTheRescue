initialization
adjustImageToState
	|oldBounds|
	oldBounds := self bounds.
	image ifNotNil: [image delete].
	image := state image.
	self 
		fitToImage;
		position: (self position - ((self bounds corner) - (oldBounds corner))).