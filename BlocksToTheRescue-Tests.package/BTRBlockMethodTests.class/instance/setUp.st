running
setUp

	super setUp.
	(BTRBlockMethod 
		on: self class
		selector: self methodSelector
		parameterNames: {}
		model: self blockModelClass new) install.