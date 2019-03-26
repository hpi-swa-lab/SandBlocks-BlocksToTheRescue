updating
contentsChanged

	self content: self model method copy.
	self changed: #contentMorphs.
	self cancel.