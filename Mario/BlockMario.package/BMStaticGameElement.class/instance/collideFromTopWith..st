directed collision
collideFromTopWith: aBMGameObject

	super collideFromTopWith: aBMGameObject.
	aBMGameObject velocity: aBMGameObject velocity x @ (aBMGameObject deltaTo: self) y
	