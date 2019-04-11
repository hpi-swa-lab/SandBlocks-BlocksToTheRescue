directed collision
collideFromLeftWith: aBMGameObject

	super collideFromLeftWith: aBMGameObject.
	aBMGameObject velocity: (aBMGameObject deltaTo: self) x @ aBMGameObject velocity y