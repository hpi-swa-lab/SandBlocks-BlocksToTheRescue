contents
contentsChanged

	(self contentsSymbolQuints 
		noneSatisfy: [:each | each first == self contentsSymbol])
		ifTrue: [self setDefaultContents].
	
	super contentsChanged.
	
	(self isShowingBlockEditor not and: [self hasBlockModelSelected] and: [self hasUnacceptedEdits not])
		ifTrue: [self toggleBlockEditor].