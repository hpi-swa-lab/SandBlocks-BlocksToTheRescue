accessing
image: aForm

	self changed.
	self refreshImageMorph.
	self blockModel ifNotNil: [self blockModel value: aForm].