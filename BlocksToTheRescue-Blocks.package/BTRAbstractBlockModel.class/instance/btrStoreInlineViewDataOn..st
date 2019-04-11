printing
btrStoreInlineViewDataOn: aWriteStream

 	inlineViewData "We do NOT use the accessor here for compliance reasons with btrStoreEditorViewDataOn:."
		isEmptyOrNil ifFalse:
			[aWriteStream nextPutAll: #inlineViewData: .
			self inlineViewData btrWriteScanOn: aWriteStream]. 