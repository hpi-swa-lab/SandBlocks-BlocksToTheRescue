printing
btrStoreOn: aWriteStream

	self btrStoreInlineViewDataOn: aWriteStream.
	self btrStoreEditorViewDataOn: aWriteStream. 