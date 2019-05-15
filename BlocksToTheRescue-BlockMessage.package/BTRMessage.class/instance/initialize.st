accessing
initialize

	super initialize.
	self internalSymbol: (UIManager default request: 'Enter symbol') asSymbol.