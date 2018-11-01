events-processing
handleKeystroke: evt

	self eventSystem dispatch: (self generateSEventFrom: evt).