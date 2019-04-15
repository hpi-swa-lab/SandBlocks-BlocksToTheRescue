initialization
initializeColumnIndexCellsRow

	| columnIndexCellsRowMorph |
	columnIndexCellsRowMorph := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill; 
		vResizing: #spaceFill;
		cellInset: BTRTableMorph defaultCellInset.
	columnIndexCellsRowMorph addMorphBack: self blankColumnIndexCellMorph.
	1 to: self tableModel columnCount do: [:columnIndex | | indexCellMorph |
		indexCellMorph := self newCollumnIndexCellWith: columnIndex.
		columnIndexCellsRowMorph addMorphBack: indexCellMorph].
	^ columnIndexCellsRowMorph