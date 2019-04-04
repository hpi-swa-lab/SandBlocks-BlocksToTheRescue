initialization
initializeMinTextField

	| builder |
	builder := ToolBuilder default.
	minTextField := (builder build: (builder pluggableInputFieldSpec new
		model: self;
		getText: #minExpression;
		setText: #minExpression:)).
	self minTextField
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: (Preferences standardDefaultTextFont height * 3/2).