as yet unclassified
layoutChanged

	super layoutChanged.
	scroller 
		ifNotNil: [self setScrollDeltas]
	