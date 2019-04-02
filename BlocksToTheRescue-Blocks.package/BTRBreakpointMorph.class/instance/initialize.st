initialization
initialize

	super initialize.
	self
		color: Color transparent;
		borderWidth: 1;
		borderColor: Color gray;
		enableToggleMorph: ImageMorph new;
		onceToggleMorph: ImageMorph new;
		extent: 52@18.