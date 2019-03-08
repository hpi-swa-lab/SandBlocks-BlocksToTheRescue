code pane
installConstantEditor

	BTRConstantEditor new
		model: self;
		in: [:editor | self install: (ToolBuilder default build: editor)].