block methods
showingBlockEditorString

	^ (self isShowingBlockEditor
		ifTrue: ['<yes>']
		ifFalse: ['<no>']), 'block editor'	