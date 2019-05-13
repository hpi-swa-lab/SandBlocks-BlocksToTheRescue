updating
update: anAspect with: anObject

	super update: anAspect.
	anAspect = #addedState ifTrue: [^ self registerState: anObject].
	anAspect = #removedState ifTrue: [^ self unregisterState: anObject].