*BlocksToTheRescue-Core
btrScanFrom1: aReadStream
	| everything |
	everything := aReadStream upToEnd.
	^ self readFrom: (ReadStream on: everything)