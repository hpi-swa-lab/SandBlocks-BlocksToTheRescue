actions
accept

	self content value: self value.
	self hasUnacceptedEdits: false.
	self model changed: #annotation.