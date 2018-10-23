updating
resizeTo: aRelativeExtent

	self extent: (aRelativeExtent
		scaleBy: self gameField extent).
	self spawningBallMorph center: self spawningBallPosition.