initialization
initializeCollapseButton
	
	| form |
	form := SystemWindow collapseBoxImage.
	collapseButton := IconicButton new 
		target: self;
		borderWidth: 0;
		labelGraphic: form;
		color: Color transparent; 
		actWhen: #buttonDown;
		actionSelector: #collapseView;
		extent: form extent;
		yourself.
	collapseButton setBalloonText: 'click here to collapse this slider to adjust the range and quantum' translated.