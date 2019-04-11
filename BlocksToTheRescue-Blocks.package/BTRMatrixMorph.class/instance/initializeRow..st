initialization
initializeRow: rowIndex

	| row |
	row := self newRow.
	1 to: self matrix columnCount do: [:columnIndex | | cell |
		cell := self newCellAt: rowIndex at: columnIndex.
		row addMorphBack: cell].
	^ row
	