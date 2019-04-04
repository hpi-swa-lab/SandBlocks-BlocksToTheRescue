using
tryToUseBy: aGameElement
	self isUsable
		ifTrue: [self useBy: aGameElement ifSuccessful: [self used]].