running
setUp

	super setUp.
	BTRBlocketMethod 
		compile: self modelInstance 
		in: self class 
		signature: self methodSelector.
	self setDefaultValue.
	self editor: BTRBlockEditor new.
	ToolBuilder default build: self editor.
	self editor model: self.
	self changed: #contents.