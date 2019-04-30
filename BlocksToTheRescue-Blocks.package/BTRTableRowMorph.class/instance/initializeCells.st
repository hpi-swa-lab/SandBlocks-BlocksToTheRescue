initialization
initializeCells

	1 to: self rowModel size do: [:columnIndex | | cellMorph |
		cellMorph := BTRTableCellMorph for: (self rowModel at: columnIndex).
		self addMorphBack: cellMorph].