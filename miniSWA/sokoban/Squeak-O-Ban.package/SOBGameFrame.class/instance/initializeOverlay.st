initialize-release
initializeOverlay 

	self overlay: SOBOverlay new.
	self overlay 
		setProperty: #morphicLayerNumber toValue: -1;
		color: (Color r: 0.5 g: 0.5 b: 0.5 alpha: 0.5).