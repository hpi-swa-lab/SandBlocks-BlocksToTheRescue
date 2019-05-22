updating
update: anAspect with: anObject

	"Transcript showln: 'Editor: ', anAspect, ' -> ', anObject."
	anAspect = #addedState ifTrue: [self registerState: anObject].
	anAspect = #removedState ifTrue: [self unregisterState: anObject].
	anAspect = #startState ifTrue: [self updateStartArrow].
	super update: anAspect.