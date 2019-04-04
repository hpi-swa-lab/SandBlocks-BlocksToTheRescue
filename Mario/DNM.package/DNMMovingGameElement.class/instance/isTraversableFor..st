testing
isTraversableFor: aGameElement
	^(self state isTraversableFor: aGameElement) or: [super isTraversableFor: aGameElement]