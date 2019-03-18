running
setUp

	super setUp.
	self method value: Color red.
	self editor: BTRConstantEditor new.
	ToolBuilder default build: self editor.
	self editor model: self.
	self changed: #contents.