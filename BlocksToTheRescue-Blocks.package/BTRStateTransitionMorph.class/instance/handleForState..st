accessing
handleForState: aBTRState

	aBTRState = self startState ifTrue: [^ handles first].
	aBTRState = self endState ifTrue: [^ handles last].
	^ self error: 'unknown handle'