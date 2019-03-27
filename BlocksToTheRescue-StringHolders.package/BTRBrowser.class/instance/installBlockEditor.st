code pane
installBlockEditor

	"Set the contentsSymbol first to avoid an endless update loop!"
	self contentsSymbol: self blockEditorSymbol.
	BTRBlockEditor new
		model: self;
		in: [:editor | self install: (ToolBuilder default build: editor)].