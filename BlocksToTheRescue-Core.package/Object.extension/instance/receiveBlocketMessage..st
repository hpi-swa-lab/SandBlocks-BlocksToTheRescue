*BlocksToTheRescue-Core
receiveBlocketMessage: aMessage
	
	"Default implementation, which maps the Message object on its symbol and performs this.
	This is pretty boring, so subclasses should implement an intelligent mapping here"
	^ self perform: aMessage selector internalSymbol withArguments: aMessage arguments