directed collision
collideFromBottom: aBMGameObject

	super collideFromBottom: aBMGameObject.
	aBMGameObject velocity: aBMGameObject velocity x @ (aBMGameObject deltaTo: self) y