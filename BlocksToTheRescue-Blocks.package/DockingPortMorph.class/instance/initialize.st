initialization
initialize

	super initialize.
	self
		extent: self class defaultRadius asPoint * 2;
		color: Color gray.