as yet unclassified
showingConstantEditorString

	^ (self isShowingConstantEditor
		ifTrue: ['<yes>']
		ifFalse: ['<no>']), 'constant editor'	