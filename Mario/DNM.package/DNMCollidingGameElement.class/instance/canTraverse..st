testing
canTraverse: aGameElement
	^(self isTraversableFor: aGameElement) or: [aGameElement isTraversableFor: self]