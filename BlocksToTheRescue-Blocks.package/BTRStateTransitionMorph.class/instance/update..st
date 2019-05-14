updating
update: anAspect

	anAspect = #position ifTrue: [^ self updateVertices].
	super update: anAspect.