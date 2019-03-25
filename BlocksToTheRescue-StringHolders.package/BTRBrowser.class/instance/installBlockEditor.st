code pane
installBlockEditor

	BTRBlockEditor new
		model: self;
		in: [:editor | self install: (ToolBuilder default build: editor)].
	self contentsSymbol: self blockEditorSymbol.