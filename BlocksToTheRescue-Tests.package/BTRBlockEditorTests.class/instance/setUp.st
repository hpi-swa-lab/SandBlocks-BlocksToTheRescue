running
setUp

	super setUp.
	(BTRBlockMethod 
		on: self class
		selector: self methodSelector
		parameterNames: {}
		model: self modelInstance) install.
	self setDefaultValue.
	self editor: BTRBlockEditor new.
	ToolBuilder default build: self editor.
	self editor model: self.
	self changed: #contents.