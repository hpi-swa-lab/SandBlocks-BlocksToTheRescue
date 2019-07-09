initialization
initializeRowMorphs

	rowMorphs := OrderedCollection new.
	1 to: self rowCount do: [:rowIndex | | rowMorph |
		rowMorph := self rowMorphClass for: (self tableModel rows at: rowIndex).
		rowMorphs add: rowMorph.
		self addMorphBack: (rowMorphs at: rowIndex)].