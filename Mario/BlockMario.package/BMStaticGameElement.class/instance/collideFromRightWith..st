directed collision
collideFromRightWith: aBMGameObject

	super collideFromRightWith: aBMGameObject.
	aBMGameObject velocity: (aBMGameObject deltaTo: self) x @ aBMGameObject velocity y