initialization
initialize

	super initialize.
	
	self
		color: Color random;
		borderColor: Color black;
		borderWidth: self class defaultBorderWidth;
		extent: self class defaultWidth @ self class defaultWidth.