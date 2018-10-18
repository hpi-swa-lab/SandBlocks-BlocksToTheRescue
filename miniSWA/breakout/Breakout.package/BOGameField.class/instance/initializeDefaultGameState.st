initialization
initializeDefaultGameState

	self paddleManager createEntityWith: (IdentityDictionary withAll: {
		#ownerMorph -> self.
		#position -> (100@100).
		#size -> (50@10)}).