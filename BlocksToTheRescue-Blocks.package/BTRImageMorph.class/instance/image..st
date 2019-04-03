accessing
image: aForm

	self blockModel ifNotNil: [self blockModel value: aForm].
	self refreshImageMorph.
	self changed.
