initialization
initialize 

	super initialize.
	self
		color: Color random;
		extent: self class defaultSize;
		initializeCodeMorph;
		code: 'Transcript showln: ''Hello World!''';
		showNewCode;
		beSticky.