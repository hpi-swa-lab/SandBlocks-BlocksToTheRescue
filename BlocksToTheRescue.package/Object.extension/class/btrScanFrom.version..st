*BlocksToTheRescue-Core
btrScanFrom: aReadStream version: aString

	| versionSelector |
	versionSelector := ('btrScanFrom', aString, ':') asSymbol.
	^ (aString isEmpty not and: [self respondsTo: versionSelector])
		ifTrue: [self perform: versionSelector with: aReadStream]
		ifFalse: [self error: 'ScanError: Unsupported version "', aString, '"!']