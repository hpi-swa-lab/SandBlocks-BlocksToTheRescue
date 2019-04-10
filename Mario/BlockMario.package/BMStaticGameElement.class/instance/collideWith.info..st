collision
collideWith: aBMGameObject info: aBMCollisionEvent
	
	aBMGameObject isJumping: false.
	aBMGameObject collideWithPlatform: self info: aBMCollisionEvent.