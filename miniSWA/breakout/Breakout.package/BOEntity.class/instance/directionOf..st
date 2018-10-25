utils
directionOf: anAxis

	^ anAxis caseOf: {
		[#x] -> [#horizontal].
		[#y] -> [#vertical]}