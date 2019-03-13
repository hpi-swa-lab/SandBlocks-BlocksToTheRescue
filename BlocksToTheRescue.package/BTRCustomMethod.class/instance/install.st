initialize-release
install

	self methodClass 
		compile: (self addParamsTo: self selector);
		addSelector: self selector withMethod: self.