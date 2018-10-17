initialization
addBlocksAt: anArray colored: aColor

	anArray do: [:each |
		self addMorph: (TBlock newAt: each colored: aColor)].
	self shrinkWrap.
	
	self blockPositions: anArray.