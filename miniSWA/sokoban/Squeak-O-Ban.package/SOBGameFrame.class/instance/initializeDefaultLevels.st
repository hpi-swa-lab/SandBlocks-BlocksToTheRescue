initialize-release
initializeDefaultLevels 

	self levelCollection: SOBLevel defaultCollection.
	self currentLevelIndex: 1.
	self reload.