running
setUp

	super setUp.
	self blockModel value: Color red.
	self editor: BTRBlockEditor new.
	ToolBuilder default build: self editor.
	self editor model: self.
	self changed: #contents.