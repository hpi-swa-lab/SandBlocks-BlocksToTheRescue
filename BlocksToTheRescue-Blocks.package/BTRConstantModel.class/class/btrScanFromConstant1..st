as yet unclassified
btrScanFromConstant1: aReadStream

	^ self new
		btrReadViewDataFrom: aReadStream;
		value: aReadStream btrScanFrom;
		yourself