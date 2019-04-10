collision
collideWithMario: aBMMario info: aBMCollisionEvent

	aBMCollisionEvent direction = #top
		ifTrue: [self die. ^ self].
	self invertDirection