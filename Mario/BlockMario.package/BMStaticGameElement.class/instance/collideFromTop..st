directed collision
collideFromTop: aBMGameObject

	super collideFromTop: aBMGameObject.
	aBMGameObject isJumping: false.
	aBMGameObject velocity: (aBMGameObject velocity x * 0.6) @ (aBMGameObject deltaTo: self) y