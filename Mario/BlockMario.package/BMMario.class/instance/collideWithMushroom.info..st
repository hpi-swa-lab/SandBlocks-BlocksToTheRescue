collision
collideWithMushroom: aBMMushroom info: aBMCollisionEvent

	self statemachine transition: #eatMushroom.
	self changedState.