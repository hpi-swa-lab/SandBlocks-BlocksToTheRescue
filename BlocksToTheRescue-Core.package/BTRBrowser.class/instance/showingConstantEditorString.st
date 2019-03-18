constant methods
showingConstantEditorString

	^ (self isShowingConstantEditor
		ifTrue: ['<yes>']
		ifFalse: ['<no>']), 'constant editor'	