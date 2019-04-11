directed collision
collideFromLeftWith: aBMGameObject

	super collideFromLeftWith: aBMGameObject.
	self velocity: (aBMGameObject deltaTo: self) x @ aBMGameObject velocity y