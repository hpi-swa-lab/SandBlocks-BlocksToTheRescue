initialization
newColumnIndexMorphWith: columnIndex

	| builder columnIndexMorph |
	builder := ToolBuilder default.
	columnIndexMorph := builder build: (builder pluggableButtonSpec new
		label: columnIndex asString).
	columnIndexMorph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		height: BTRTableCellMorph defaultCellHeight;
		width:BTRTableCellMorph defaultCellWidth.
	^ columnIndexMorph