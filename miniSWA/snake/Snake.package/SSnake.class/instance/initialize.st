initialize-release
initialize

	super initialize.
	self head: SSnakeHead new.
	self segments: OrderedCollection new.