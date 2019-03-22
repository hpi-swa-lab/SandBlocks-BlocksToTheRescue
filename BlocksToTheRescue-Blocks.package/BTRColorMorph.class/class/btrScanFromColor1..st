fileIn/Out
btrScanFromColor1: aReadStream

	^ BTRConstantModel for: (Color fromString: aReadStream upToEnd)