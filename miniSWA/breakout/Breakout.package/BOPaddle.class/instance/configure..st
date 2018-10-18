initialize-release
configure: aDictionary

	super configure: aDictionary.
	self morph extent: (aDictionary at: #size).