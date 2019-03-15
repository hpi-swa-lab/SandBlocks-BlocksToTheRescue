as yet unclassified
executionContext

	| currentContext |
	currentContext := thisContext.
	[currentContext receiver = self and: [currentContext method selector = #value] and: [currentContext isClosureContext not]] whileFalse:
		[currentContext sender
			ifNotNil: [:outerContext | currentContext := outerContext]
			ifNil: [self error: 'Not in execution context']].
	^ currentContext sender