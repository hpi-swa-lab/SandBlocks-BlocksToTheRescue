printing
btrReadEditorViewDataFrom: aReadStream
		
	editorViewData := (aReadStream peek: 14 "length of #editorViewData:") = #editorViewData
		ifTrue:
			[aReadStream next: 14.
			aReadStream btrScanFrom]
		ifFalse: [nil] 