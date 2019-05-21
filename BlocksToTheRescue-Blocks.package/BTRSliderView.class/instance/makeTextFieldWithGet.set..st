build utilities
makeTextFieldWithGet: aGetSymbol set: aSetSymbol 

	| builder textField |
	builder := ToolBuilder default.
	textField := (builder build: (builder pluggableInputFieldSpec new
		model: self;
		getText: aGetSymbol;
		setText: aSetSymbol)).
	textField
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: (Preferences standardDefaultTextFont height * 3/2).
	^ textField