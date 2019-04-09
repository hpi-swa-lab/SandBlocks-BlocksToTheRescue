instance creation
btrScanFromN1: aReadStream

	^ BTRNumberModel new
		value: aReadStream btrScanFrom;
		minimumValue: aReadStream btrScanFrom;
		maximumValue: aReadStream btrScanFrom;
		quantum: aReadStream btrScanFrom;
		yourself