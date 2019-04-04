instance creation
install
	self resetSingleton. "in case we are reinstalling"
	UniqueInstance := self basicNew initialize install.