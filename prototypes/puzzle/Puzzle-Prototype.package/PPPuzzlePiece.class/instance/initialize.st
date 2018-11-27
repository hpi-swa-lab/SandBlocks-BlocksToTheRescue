initialization
initialize 

	super initialize.
	self
		color: Color random;
		extent: self class defaultSize;
		code: 'Transcript showln: ''Hello World!''';
		showCodeIn: self;
		beSticky.