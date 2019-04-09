contents
contentsChanged

	(self contentsSymbolQuints 
		noneSatisfy: [:each | each first == self contentsSymbol])
		ifTrue: [self setDefaultContents].
	
	super contentsChanged.
	self changed: #contentsSerialized.
	
	self shouldSwapToBlockEditor
		ifTrue: [self toggleBlockEditor].