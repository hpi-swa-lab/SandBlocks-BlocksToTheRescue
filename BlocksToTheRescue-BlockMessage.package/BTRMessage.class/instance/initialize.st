accessing
initialize
		
	super initialize.
	self internalSymbol: (UIManager default request: 'Enter selector') asSymbol.
	self initializeParameterFields.
	self iterator: 0.