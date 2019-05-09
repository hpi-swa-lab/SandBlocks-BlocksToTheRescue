actions
cancel

	self blockMethod: self model method copy.
	self signature: self blockMethod signature.
	self changed: #contentMorphs.
	self hasUnacceptedEdits: false.