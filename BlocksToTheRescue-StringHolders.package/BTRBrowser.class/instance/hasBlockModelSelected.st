block methods
hasBlockModelSelected

	^ self hasMessageSelected
		and: [self method isBTRBlockMethod]