initialization
initializeRowMorphs

	rowMorphs := OrderedCollection new.
	1 to: self tableModel rowCount do: [:rowIndex | | rowMorph |
		rowMorph := self rowMorphClass on: (self tableModel rows at: rowIndex).
		rowMorphs add: rowMorph.
		self addMorphBack: (rowMorphs at: rowIndex)].