initialization
initialize

	super initialize.
	self
		color: Color transparent;
		borderWidth: 1;
		borderColor: Color gray;
		iconMorph: self enabledIcon asMorph;
		textMorph: '1x' asMorph;
		extent: 48@18.