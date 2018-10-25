utils
axisFrom: aSide

	^ aSide caseOf: {
		[#left] -> [#x].
		[#right] -> [#x].
		[#top] -> [#y].
		[#bottom] -> [#y]}