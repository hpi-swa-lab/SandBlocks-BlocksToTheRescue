level selection
reload

	self showLevel: self currentLevelBlock value.
	self levelMorph unblockInputs.
	self overlay hide.
	self buttonBar hasPrevious: self hasPrevious hasNext: self hasNext.
	self fullBounds; bounds: self submorphBounds.