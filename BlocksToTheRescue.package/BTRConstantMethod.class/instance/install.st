initialize-release
install

	self methodClass 
		compile: self selector asString;
		addSelector: self selector withMethod: self.