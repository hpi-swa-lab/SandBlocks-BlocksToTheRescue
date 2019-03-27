actions
accept

	self content install.
	self contentsChanged.
	self hasUnacceptedEdits: false.
	self model changed: #annotation.