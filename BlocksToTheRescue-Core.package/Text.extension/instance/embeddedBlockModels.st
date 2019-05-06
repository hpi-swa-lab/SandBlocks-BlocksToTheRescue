*BlocksToTheRescue-Core
embeddedBlockModels

	^ runs gather: [:attributes |
		attributes 
			select: #hasBTRBlockModel
			thenCollect: #blockModel]