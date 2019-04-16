initialization
newColumnIndexMorphWith: columnIndex

	| builder rowIndexMorph |
	builder := ToolBuilder default.
	rowIndexMorph := builder build: (builder pluggableButtonSpec new
		label: columnIndex asString).
	rowIndexMorph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		height: BTRTableCellMorph defaultCellHeight;
		width:BTRTableCellMorph defaultCellWidth;
		color: Color lightGray.
	^ rowIndexMorph