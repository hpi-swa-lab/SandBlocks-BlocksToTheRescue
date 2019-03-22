accessing
image: aForm

	image := aForm.
	self refreshImageMorph.
	self blockModel ifNotNil: [self blockModel value: aForm]