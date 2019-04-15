accessing
valueExpression

	^ self value
		ifNil: ['']
		ifNotNil: [self value printString]