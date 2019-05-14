updating
update: anAspect with: anObject

	anAspect = #addedState ifTrue: [^ self registerState: anObject].
	anAspect = #removedState ifTrue: [^ self unregisterState: anObject].
	super update: anAspect.