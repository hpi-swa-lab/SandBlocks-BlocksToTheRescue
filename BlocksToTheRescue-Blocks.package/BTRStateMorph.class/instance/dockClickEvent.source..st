event handling
dockClickEvent: evt source: aMorph

	(self dockMenuFor: (aMorph valueOfProperty: #dockingDirection) event: evt)
		setInvokingView: self;
		popUpEvent: evt in: self world.
	"self grabTransition: self state transitions values first event: evt."