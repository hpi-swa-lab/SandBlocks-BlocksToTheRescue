initialization
initializeQuantumTextField

	| builder |
	builder := ToolBuilder default.
	quantumTextField := (builder build: (builder pluggableInputFieldSpec new
		model: self;
		getText: #quantumExpression;
		setText: #quantumExpression:)).
	self quantumTextField
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: (Preferences standardDefaultTextFont height * 3/2).