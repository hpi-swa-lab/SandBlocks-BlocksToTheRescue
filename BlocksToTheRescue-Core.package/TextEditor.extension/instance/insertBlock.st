*BlocksToTheRescue-Core
insertBlock

	self selectBlockModelClass
		ifNotNil: [ :modelClass | 
			self 
				insertAndSelectText: (BTRBlockAttribute asTextFrom: modelClass new)
				at: self stopIndex ].
	