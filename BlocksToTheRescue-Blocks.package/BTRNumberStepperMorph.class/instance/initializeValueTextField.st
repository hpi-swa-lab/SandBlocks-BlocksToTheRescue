initialization
initializeValueTextField

	| builder |
	builder := ToolBuilder default.
	valueTextField := (builder build: (builder pluggableInputFieldSpec new
		model: self;
		getText: #valueExpression;
		setText: #valueExpression:)).
	self valueTextField
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		height: self height;
		color: Color transparent;
		borderColor: Color gray.