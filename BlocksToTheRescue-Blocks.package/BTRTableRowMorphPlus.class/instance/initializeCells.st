initialization
initializeCells

	self addMorphBack: self newRowIndexMorph.
	1 to: self rowModel size do: [:columnIndex | | cellMorph |
		cellMorph := BTRTableCellMorph on: (self rowModel at: columnIndex).
		self addMorphBack: cellMorph].