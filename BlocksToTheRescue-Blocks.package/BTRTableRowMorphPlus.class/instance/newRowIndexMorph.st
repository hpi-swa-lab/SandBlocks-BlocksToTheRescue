initialization
newRowIndexMorph

	| builder rowIndexMorph |
	builder := ToolBuilder default.
	rowIndexMorph := builder build: (builder pluggableButtonSpec new
		label: self index asString).
	rowIndexMorph
		hResizing: #rigid;
		vResizing: #spaceFill;
		height: BTRTableCellMorph defaultCellHeight;
		width: BTRTableCellMorph defaultRowIndexCellWidth.
	^ rowIndexMorph