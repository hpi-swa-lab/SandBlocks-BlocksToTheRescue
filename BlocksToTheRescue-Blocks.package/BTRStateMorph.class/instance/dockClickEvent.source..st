event handling
dockClickEvent: evt source: aMorph

	(self dockMenuFor: (aMorph valueOfProperty: #dockingDirection))
		setInvokingView: self;
		popUpEvent: evt in: self world.