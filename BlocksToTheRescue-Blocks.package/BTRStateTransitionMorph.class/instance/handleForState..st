accessing
handleForState: aBTRState

	aBTRState = self endState ifTrue: [^ handles last].
	aBTRState = self startState ifTrue: [^ handles first].
	^ self error: 'unknown handle'