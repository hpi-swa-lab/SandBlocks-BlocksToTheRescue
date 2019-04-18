fileIn/out
btrScanFromStateMachine1: aReadStream

	^ self new
		updateFromText: (aReadStream upToEnd asBTRText);
		yourself