fileIn/Out
scanFrom: aStream

	^ aStream peek = $#
		ifFalse: [self originalScanFrom: aStream]
		ifTrue: [self versionedScanFrom: aStream]