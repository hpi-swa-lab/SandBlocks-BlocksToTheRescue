code pane
installSerializedViewer

	"Set the contentsSymbol first to avoid an endless update loop!"
	self contentsSymbol: self serializedViewerSymbol.
	self install: (ToolBuilder default build:
		(self codeTextSpec
			getText: #contentsSerialized;
			setText: nil;
			readOnly: true;
			stylerClass: SHTextStyler)).