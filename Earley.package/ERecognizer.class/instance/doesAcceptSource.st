testing
doesAcceptSource

	self buildItems.
	^ self source size = (self states size - 1) and: [self states last anySatisfy: [:each | each start = 1]]