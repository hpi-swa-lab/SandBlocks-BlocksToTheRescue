initialization
initializeExpandButton
	
	| form |
	form := SystemWindow expandBoxImage.
	expandButton := IconicButton new 
		target: self;
		borderWidth: 0;
		labelGraphic: form;
		color: Color transparent; 
		actWhen: #buttonDown;
		actionSelector: #expandView;
		extent: form extent;
		yourself.
	expandButton setBalloonText: 'click here to adjust the range and quantum' translated.