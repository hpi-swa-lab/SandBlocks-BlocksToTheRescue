updating
updateRowMorphs

	self rowMorphs do: [:aRowMorph | aRowMorph abandon].
	self extent: self defaultTableExtent.
	rowMorphs := OrderedCollection new.
	1 to: self rowCount do: [:rowIndex | | rowMorph |
		rowMorph := self rowMorphClass for: (self tableModel rows at: rowIndex).
		rowMorphs add: rowMorph.
		self addMorphBack: (rowMorphs at: rowIndex)].