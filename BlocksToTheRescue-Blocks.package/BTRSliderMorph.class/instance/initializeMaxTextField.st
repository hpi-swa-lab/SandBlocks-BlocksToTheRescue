initialization
initializeMaxTextField

	| builder |
	builder := ToolBuilder default.
	maxTextField := (builder build: (builder pluggableInputFieldSpec new
		model: self;
		getText: #maxExpression;
		setText: #maxExpression:)).
	self maxTextField
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: (Preferences standardDefaultTextFont height * 3/2).