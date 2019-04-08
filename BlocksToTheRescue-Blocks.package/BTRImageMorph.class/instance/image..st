accessing
image: aForm

	self blockModel ifNotNil: [self blockModel image: aForm].
	self refreshImageMorph.
	self changed.
