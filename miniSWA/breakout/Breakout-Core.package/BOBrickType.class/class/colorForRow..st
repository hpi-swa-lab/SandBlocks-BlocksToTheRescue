constants
colorForRow: anInteger

	^ anInteger caseOf: {
		[1] -> [#red].
		[2] -> [#orange].
		[3] -> [#green].
		[4] -> [#yellow]}