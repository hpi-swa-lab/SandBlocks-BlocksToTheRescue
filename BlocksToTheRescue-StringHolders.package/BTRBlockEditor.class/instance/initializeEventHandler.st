initialize-release
initializeEventHandler

	self eventHandler: EventHandler new.
	self eventHandler
		on: #mouseEnter send: #mouseEnter: to: self;
		on: #mouseLeave send: #mouseLeave: to: self;
		on: #keyStroke send: #keyStroke: to: self.