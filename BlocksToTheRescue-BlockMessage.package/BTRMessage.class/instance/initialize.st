accessing
initialize
		
	super initialize.
	self internalSymbol ifNil: [self internalSymbol: (UIManager default request: 'Enter selector') asSymbol].
	self initializeParameterFields.
	self iterator: 0.