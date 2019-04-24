running
transitionActionOn: anObject

	^ self action
		ifNotNil: [self performActionOn: anObject]