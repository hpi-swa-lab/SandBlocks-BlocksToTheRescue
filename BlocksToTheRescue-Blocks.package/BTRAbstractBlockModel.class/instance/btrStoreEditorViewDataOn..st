printing
btrStoreEditorViewDataOn: aWriteStream

 	"We do NOT use the accessor here because the calls to the editorViewData get redirected by default to the inlineViewData which would result in storing the SAME inlineViewData object twice (which will result in real problems), once here via the redirect to inlineViewData and the other time by storing the inlineViewData itself."
	editorViewData btrWriteScanOn: aWriteStream.