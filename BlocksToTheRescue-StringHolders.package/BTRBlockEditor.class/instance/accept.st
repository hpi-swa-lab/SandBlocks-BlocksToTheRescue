actions
accept

	self content copy install.
	self hasUnacceptedEdits: false.
	self model changed: #annotation.