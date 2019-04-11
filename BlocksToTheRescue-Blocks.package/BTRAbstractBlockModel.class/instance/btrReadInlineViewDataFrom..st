printing
btrReadInlineViewDataFrom: aReadStream
		
	inlineViewData := (aReadStream peek: 15 "length of #inlineViewData:") = #inlineViewData:
		ifTrue:
			[aReadStream next: 15.
			aReadStream btrScanFrom]
		ifFalse: [nil] 