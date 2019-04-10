*BlocksToTheRescue-Core
embeddedBlockModels

	^ runs gather: [:attributes |
		attributes 
			select: [:attribute | attribute blockModel notNil]
			thenCollect: #blockModel]