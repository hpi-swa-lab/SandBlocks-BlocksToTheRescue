initialize-release
initializeLevelWrapper

	self levelWrapper: PasteUpMorph new.
	self levelWrapper 
		borderColor: Color transparent.
	self addMorph: self levelWrapper.