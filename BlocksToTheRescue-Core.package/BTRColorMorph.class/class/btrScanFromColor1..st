fileIn/Out
btrScanFromColor1: aReadStream

	^ self new
		color: (Color fromString: aReadStream upToEnd);
		yourself