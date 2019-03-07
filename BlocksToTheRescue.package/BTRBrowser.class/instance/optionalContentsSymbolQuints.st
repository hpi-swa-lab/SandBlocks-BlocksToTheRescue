controls
optionalContentsSymbolQuints
	"The quints are put in here as tuples in the form condition -> quint"
	^ {#constantEditorAvailable -> 
		{self constantEditorSymbol
			. #toggleConstantEditor 
			. #showingConstantEditorString 
			. 'constant editor'
			. 'this is a constant method and can be edited as such' translated}.} 
	select: [:each | self perform: each key]
	thenCollect: [:each | each value]