initialization
initializeExtent

	self width: self numberOfRows * self cellWidth + (2 * self inset).
	self height: self numberOfColumns * self cellHeight + (2 * self inset).