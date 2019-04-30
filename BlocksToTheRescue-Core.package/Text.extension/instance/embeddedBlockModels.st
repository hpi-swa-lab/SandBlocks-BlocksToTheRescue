*BlocksToTheRescue-Core
embeddedBlockModels
	"We return an IdentitySet here as we want to return the exact BlockModels that are in this Text and not cause confusion with any blockModels that are equal, but not the same.
	BlockModels that are equal but not the same appear often in Text fields (e.g. the blockModel before and after a save are likely equal)."
	^ (runs gather: [:attributes |
		attributes 
			select: #hasBTRBlockModel
			thenCollect: #blockModel]) asIdentitySet