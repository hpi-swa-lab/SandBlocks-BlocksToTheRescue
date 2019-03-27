controls
optionalContentsSymbolQuints
	"The quints are put in here as tuples in the form condition -> quint"
	^ {#hasBlockModelSelected -> 
		{self blockEditorSymbol
			. #toggleBlockEditor 
			. #showingBlockEditorString 
			. 'block editor'
			. 'this is a block and can be edited as such' translated}.
	#couldBecomeBlockModel -> 
		{(self blockEditorSymbol,'optional') asSymbol
			. #toggleBlockEditor
			. #showingConvertToBlockString
			. 'convert to block'
			. 'this method can be transformed into a block model' translated}.
	} 
	select: [:each | (self perform: each key) = true]
	thenCollect: [:each | each value]