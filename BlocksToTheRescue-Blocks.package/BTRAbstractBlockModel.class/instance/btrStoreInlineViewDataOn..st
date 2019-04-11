printing
btrStoreInlineViewDataOn: aWriteStream

 	"We do NOT use the accessor here for compliance reasons with btrStoreEditorViewDataOn:."
	inlineViewData btrWriteScanOn: aWriteStream.