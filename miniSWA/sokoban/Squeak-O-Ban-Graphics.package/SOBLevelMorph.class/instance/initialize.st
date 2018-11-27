initialize-release
initialize 

	super initialize.
	self 
		color: self backgroundColor;
		setProperty: #morphicLayerNumber toValue: 10;
		position: 0@0.