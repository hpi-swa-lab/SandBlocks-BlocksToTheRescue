accessing
haltEnabled: aBoolean
	haltEnabled := aBoolean.
	self image: (aBoolean
		ifTrue: [self enabledIcon]
		ifFalse: [self disabledIcon]).