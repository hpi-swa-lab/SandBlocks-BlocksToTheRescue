event handling
spawnBallAt: aRelativePosition

	self ballManager createEntityWith: {
		#bottomCenterPosition -> aRelativePosition} on: self.