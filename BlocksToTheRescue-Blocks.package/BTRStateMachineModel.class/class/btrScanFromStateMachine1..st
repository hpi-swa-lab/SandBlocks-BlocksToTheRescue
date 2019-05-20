instance creation
btrScanFromStateMachine1: aReadStream

	^ self new
		btrReadViewDataFrom: aReadStream;
		updateFromText: (aReadStream upToEnd asBTRText);
		yourself