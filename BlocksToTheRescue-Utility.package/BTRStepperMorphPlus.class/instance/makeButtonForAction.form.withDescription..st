build utilities
makeButtonForAction: aSymbol form: aForm withDescription: aString

	^ IconicButton new 
		target: self;
		borderWidth: 0;
		labelGraphic: aForm;
		color: Color transparent; 
		actWhen: #buttonDown;
		actionSelector: aSymbol;
		extent: aForm extent;
		setBalloonText: aString translated;
		yourself