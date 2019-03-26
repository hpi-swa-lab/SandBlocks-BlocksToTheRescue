constant methods
hasBlockModelSelected

	^ self hasMessageSelected and: [self method isBTRBlockModel]