initialization
initialize

	super initialize.
	self
		gameField: self defaultGameFieldClass new;
		configureForKids;
		initializeContent.
	self gameField addDependent: self.