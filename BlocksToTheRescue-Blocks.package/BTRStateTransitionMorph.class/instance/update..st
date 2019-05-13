updating
update: anAspect

	super update: anAspect.
	anAspect = #position ifTrue: [self updateVertices].