fileIn/Out
btrReadModelDataFrom: aReadStream

	^ (aReadStream peek: 10) = #modelData:
		ifTrue: [aReadStream next: 10.
			aReadStream btrScanFrom]
		ifFalse: [nil]