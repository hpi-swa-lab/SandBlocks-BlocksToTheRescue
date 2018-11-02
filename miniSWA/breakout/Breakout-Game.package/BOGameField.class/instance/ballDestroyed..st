event handling
ballDestroyed: aBOBall

	self ballEntities isEmpty ifTrue: [self gameLost].