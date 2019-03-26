controls
contentsSymbolQuints

	^ super contentsSymbolQuints , 
	(self optionalContentsSymbolQuints 
		ifNotEmpty: [:optionals | {#- . #-}, optionals]
		ifEmpty: [{}]) ,
	{#-. 
	  #-.
		{self blockEditorSymbol.
		#toggleBlockEditor.
		#showingBlockEditorString.
		'block method'.
		'this is a block method and can be edited as such' translated}}.