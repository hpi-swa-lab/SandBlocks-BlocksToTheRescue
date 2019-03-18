constant methods
couldBecomeConstantMethod

	^ (self method
		ifNotNil: [:method | BTRConstantMethod canBeCreatedFrom: method]
		ifNil: [false]) and: [self hasConstantMethodSelected not]