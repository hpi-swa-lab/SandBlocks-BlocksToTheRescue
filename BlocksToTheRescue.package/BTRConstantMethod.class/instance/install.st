initialize-release
install

	self flag: #TODO "If the method is installed this way, it is not shown in method browser".
	self methodClass addSelector: self selector withMethod: self.