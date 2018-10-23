initialize-release
addBlocksAt: anArray colored: aColor

	self blocks: (anArray collect: [:each | TBlock withGridPosition: each colored: aColor]).