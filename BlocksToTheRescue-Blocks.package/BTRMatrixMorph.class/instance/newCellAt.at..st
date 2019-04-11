initialization
newCellAt: rowIndex at: columnIndex

	| builder cell |
	builder := ToolBuilder default.
	cell := (builder build: (builder pluggableInputFieldSpec new
		model: (self matrix at: rowIndex at: columnIndex);
		getText: #contents;
		setText: #contents:)).
	cell
		"hResizing: #spaceFill;
		vResizing: #spaceFill #rigid;"
		height: self defaultCellHeight;
		width: self defaultCellWidth.
	^ cell