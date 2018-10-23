morph representation
asMorph

	^ RectangleMorph new
		color: self color;
		setProperty: #morphicLayerNumber toValue: 2;
		borderColor: Color transparent;
		beSticky