updating
update: anAspect with: anObject

	anAspect = #createdTransition ifTrue: [self stateMachineMorph registerTransition: anObject].
	super update: anAspect with: anObject.