updating
update: anAspect

	anAspect = #position ifTrue: [self updateVertices].
	anAspect = #removed ifTrue: [self stateMachineMorph unregisterTransition: self transition].
	super update: anAspect.