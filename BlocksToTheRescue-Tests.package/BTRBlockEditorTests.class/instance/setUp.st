running
setUp

	super setUp.
	(BTRBlockMethod 
		on: self class
		selector: self methodSelector
		parameterNames: {}
		model: self blockModelClass new) install.
	self blockModel value: Color red.
	self editor: BTRBlockEditor new.
	ToolBuilder default build: self editor.
	self editor model: self.
	self changed: #contents.