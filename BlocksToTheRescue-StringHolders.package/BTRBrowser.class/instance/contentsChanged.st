contents
contentsChanged

	(self contentsSymbolQuints 
		noneSatisfy: [:each | each first == self contentsSymbol])
		ifTrue: [self setDefaultContents].
	
	(self isShowingBlockEditor not and: [self hasBlockModelSelected])
		ifTrue: [self toggleBlockEditor].
	super contentsChanged.