initialization
initialize

	super initialize.
	
	self
		color: Color gray;
		borderColor: self class defaultBorderColor;
		borderWidth: self class defaultBorderWidth;
		extent: self class defaultWidth @ self class defaultWidth.