versioned scanning
scanFromV2: aStream

	^ self new 
		blockModel: aStream btrScanFrom;
		yourself