as yet unclassified
initialize

	super initialize.
	
	self
		color: Color random;
		borderColor: Color black;
		borderWidth: self defaultBorderWidth;
		extent: self defaultWidth @ self defaultWidth.