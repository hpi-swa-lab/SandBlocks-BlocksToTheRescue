initialization
initializeColumnTextField

	| builder |
	builder := ToolBuilder default.
	columnTextField := (builder build: (builder pluggableInputFieldSpec new
		model: self;
		getText: #columnExpression;
		setText: #columnExpression:)).
	self columnTextField
		hResizing: #rigid"spaceFill";
		vResizing: #rigid;
		height: (Preferences standardDefaultTextFont height * 3/2).