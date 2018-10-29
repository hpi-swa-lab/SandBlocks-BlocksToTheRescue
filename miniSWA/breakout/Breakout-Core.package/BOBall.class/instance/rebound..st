actions
rebound: anAxis

	(self directionOf: anAxis) caseOf: {
		[#vertical] -> [self reboundVertical].
		[#horizontal] -> [self reboundHorizontal]}.