running
setUp

	super setUp.
	(self blockModelClass on: self class selector: self methodSelector)
		install.