actions
cancel

	self content: self model method copy.
	self changed: #contentMorphs.
	self hasUnacceptedEdits: false.