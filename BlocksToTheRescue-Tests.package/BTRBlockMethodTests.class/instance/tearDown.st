running
tearDown

	super tearDown.
	self class removeSelector: self methodSelector.