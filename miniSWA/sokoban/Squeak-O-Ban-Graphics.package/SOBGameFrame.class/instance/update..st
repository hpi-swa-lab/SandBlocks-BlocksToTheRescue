updating
update: anAspect

	super update: anAspect.
	anAspect = #solved ifTrue: [self solved].
	anAspect = #failed ifTrue: [self failed].