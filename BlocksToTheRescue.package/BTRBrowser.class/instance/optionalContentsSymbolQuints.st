controls
optionalContentsSymbolQuints
	"The quints are put in here as tuples in the form condition -> quint"
	^ {#hasConstantMethodSelected -> 
		{self constantEditorSymbol
			. #toggleConstantEditor 
			. #showingConstantEditorString 
			. 'constant editor'
			. 'this is a constant method and can be edited as such' translated}.
	#couldBecomeConstantMethod -> 
		{(self constantEditorSymbol,'optional') asSymbol
			. #toggleConstantEditor 
			. #showingConstantEditorString 
			. 'constant editor'
			. 'this method can be transformed into a constant one' translated}.} 
	select: [:each | (self perform: each key) = true]
	thenCollect: [:each | each value]