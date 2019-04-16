initialization
initializeColumnIndexRowMorph

	| rowMorph |
	rowMorph := self newColumnIndexRowMorph. 
	rowMorph addMorphBack: self blankRowIndexMorph.
	1 to: self tableModel columnCount do: [:columnIndex | | columnIndexMorph |
		columnIndexMorph := self newColumnIndexMorphWith: columnIndex.
		rowMorph addMorphBack: columnIndexMorph].
	self addMorphBack: rowMorph.