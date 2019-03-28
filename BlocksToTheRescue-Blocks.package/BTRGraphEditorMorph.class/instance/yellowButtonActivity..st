as yet unclassified
yellowButtonActivity: isShifted

	(self getMenu: isShifted)
		setInvokingView: self;
		popUpEvent: self activeHand lastEvent in: self world.