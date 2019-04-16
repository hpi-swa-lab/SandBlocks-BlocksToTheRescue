initialization
initializeRowTextField

	| builder |
	builder := ToolBuilder default.
	rowTextField := (builder build: (builder pluggableInputFieldSpec new
		model: self;
		getText: #rowExpression;
		setText: #rowExpression:)).
	self rowTextField
		hResizing: #rigid"spaceFill";
		vResizing: #rigid;
		height: (Preferences standardDefaultTextFont height * 3/2).