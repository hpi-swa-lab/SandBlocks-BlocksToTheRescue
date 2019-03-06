as yet unclassified
contentsChanged

	(self contentsSymbolQuints 
		noneSatisfy: [:each | each first == self contentsSymbol])
		ifTrue: [self setDefaultContents].
	super contentsChanged.