accessing
once: aBoolean

	once := aBoolean.
	once ifTrue: [self enabled: true].
	self changed: #once.
	self changed.