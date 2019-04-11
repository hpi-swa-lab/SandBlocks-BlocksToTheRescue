directed collision
collideFromRightWith: aBMGameObject

	super collideFromRightWith: aBMGameObject.
	self velocity: (aBMGameObject deltaTo: self) x @ aBMGameObject velocity y