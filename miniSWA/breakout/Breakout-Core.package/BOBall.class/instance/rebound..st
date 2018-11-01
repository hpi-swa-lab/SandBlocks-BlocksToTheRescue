actions
rebound: anAxis

	anAxis caseOf: {
		[#x] -> [self reboundVertical].
		[#y] -> [self reboundHorizontal]}.