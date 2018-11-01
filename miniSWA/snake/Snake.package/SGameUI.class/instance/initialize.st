initialize-release
initialize 

	super initialize.
	self game: SGame new.
	self setLabel: 'Snake'.
	self showStartScreen.