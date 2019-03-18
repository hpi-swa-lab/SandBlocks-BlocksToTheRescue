*BlocksToTheRescue-Core
btrScanFrom: aReadStream

	^ self btrScanFrom: aReadStream version: (aReadStream upTo: $;)