initialization
initialize

	super initialize.
	self 
		initializeCollections;
		eventSystem: SEventSystem new.
	self eventSystem filterEvent: SDieEvent for: self.
	self eventSystem filterEvent: SDevourEvent for: self.