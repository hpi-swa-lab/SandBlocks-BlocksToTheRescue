build utilities
makeButtonForAction: aSymbol form: aForm withDescription: aString

	^ IconicButton new 
		target: self;
		borderWidth: 0;
		labelGraphic: aForm;
		color: Color transparent;
		borderColor: self borderColor;
		borderWidth: 1;
		actWhen: #buttonUp;
		actionSelector: aSymbol;
		extent: aForm extent;
		setBalloonText: aString translated;
		yourself