as yet unclassified
executionContext

	| currentContext |
	currentContext := thisContext.
	[currentContext receiver = self and: [currentContext method selector = #value]] whileFalse:
		[currentContext sender
			ifNotNil: [:outerContext | currentContext := outerContext]
			ifNil: [self error: 'Not in execution context']].
	^ currentContext sender