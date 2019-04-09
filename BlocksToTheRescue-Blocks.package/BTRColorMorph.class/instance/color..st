accessing
color: aColor

	super color: aColor.
	self updateText.
	self blockModel ifNotNil: [self blockModel value: aColor].