morph representation
asMorph

"	^ CircleMorph new
		color: self color;
		borderWidth: 2;
		borderColor: Color transparent;
		setProperty: #morphicLayerNumber toValue: 1;
		beSticky;
		yourself"
		
	^ ((ImageMorph new
		image: self image;
		beSticky;
		yourself) 
		addFlexShell )
		setProperty: #morphicLayerNumber toValue: 1; yourself