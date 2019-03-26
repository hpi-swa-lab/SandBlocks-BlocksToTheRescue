constant methods
hasBlockModelSelected

	^ self hasMessageSelected 
		and: [self method isBTRBlockModel or: [self method pragmas includes: #BTRBlockModel]]