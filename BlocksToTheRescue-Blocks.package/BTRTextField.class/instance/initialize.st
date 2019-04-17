initialization
initialize

	super initialize.
	self 
		buildPluggableText: self inputFieldSpec;
		minimumHeight: 0;
		acceptOnCR: true;
		hideScrollBarsIndefinitely;
		hResizing: #rigid;
		vResizing: #rigid "#spaceFill";
		height: (Preferences standardDefaultTextFont height * 3/2);
		acceptAction: [:newContents | self model accept];
		wantsFrameAdornments: false.