running
setUp

	super setUp.
	
	BTRBlocketMethod 
		compile: self blockModelClass new 
		in: self class 
		signature: self methodSelector.