comparing
= other

	^ self class = other class
		and: [self name = other name]
		and: [self sourceStateName = other sourceStateName]
		and: [self targetStateName = other targetStateName]