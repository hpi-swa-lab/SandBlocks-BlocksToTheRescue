directed collision
collideFromBottomWith: aBMGameObject

	super collideFromBottomWith: aBMGameObject.
	aBMGameObject velocity: (aBMGameObject velocity x * 0.6) @ (aBMGameObject deltaTo: self) y
	