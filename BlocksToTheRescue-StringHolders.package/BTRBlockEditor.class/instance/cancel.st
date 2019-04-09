actions
cancel

	self blockMethod: self model method copy.
	self changed: #contentMorphs.
	self hasUnacceptedEdits: false.