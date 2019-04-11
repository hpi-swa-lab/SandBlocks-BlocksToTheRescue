collision
collideWithCollectable: aBMGameObject info: aBMCollisionEvent

	aBMCollisionEvent direction ~= #top
		ifTrue: [Transcript showln: aBMCollisionEvent direction]