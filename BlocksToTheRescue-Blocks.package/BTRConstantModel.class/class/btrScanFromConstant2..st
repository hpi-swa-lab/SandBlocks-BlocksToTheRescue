as yet unclassified
btrScanFromConstant2: aReadStream

	^ self new
		btrReadViewDataFrom: aReadStream;
		value: aReadStream btrScanFrom;
		yourself