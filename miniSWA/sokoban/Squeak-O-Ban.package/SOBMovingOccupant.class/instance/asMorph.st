as yet unclassified
asMorph

	^ CircleMorph new
		color: self color;
		borderWidth: 2;
		borderColor: Color transparent;
		setProperty: #morphicLayerNumber toValue: 1;
		beSticky