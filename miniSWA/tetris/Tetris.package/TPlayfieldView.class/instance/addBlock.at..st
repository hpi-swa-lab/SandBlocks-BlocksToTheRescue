as yet unclassified
addBlock: aTBlock at: aPoint

	self addMorph:
		((TBlockView colored: aTBlock color)
			openInWorld;
			position: aPoint * TBlockView defaultWidth + self position)