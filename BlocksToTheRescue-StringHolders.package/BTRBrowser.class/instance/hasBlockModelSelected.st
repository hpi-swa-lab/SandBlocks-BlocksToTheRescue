block methods
hasBlockModelSelected

	^ self hasMessageSelected 
		and: [self method isBTRBlockModel or: [self canConvertToBlockModel: self method]]