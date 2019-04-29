initialize-release
install

	self methodClass 
		compile: self selectorWithParams;
		addSelector: self selector withMethod: self.