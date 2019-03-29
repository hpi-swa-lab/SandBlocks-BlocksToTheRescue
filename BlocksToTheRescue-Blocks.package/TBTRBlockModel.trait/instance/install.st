initialize-release
install

	self methodClass compile: (self getSourceFor: self methodClass in: self selector).