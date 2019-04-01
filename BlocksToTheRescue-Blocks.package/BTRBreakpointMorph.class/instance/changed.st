editing
changed

	super changed.
	self blockModel ifNotNil: [:model |
		self icon: (model enabled
			ifTrue: [self enabledIcon]
			ifFalse: [self disabledIcon])].