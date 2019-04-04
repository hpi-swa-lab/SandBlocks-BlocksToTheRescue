initialization
initialize
	super initialize.
	self 
		title: 'Definitely Not Mario!';
		chooseLanguage;
		specification: DNMLevelSpecification default;
		position: 0 @ (World height*3/4);
		stayUp: true;
		initializeMenuOptions.