collision
collideWithPlatform: aBMPlatform info: aBMCollisionEvent

	(aBMCollisionEvent direction = #left or: [aBMCollisionEvent direction = #right])
		ifTrue: [self invertDirection]