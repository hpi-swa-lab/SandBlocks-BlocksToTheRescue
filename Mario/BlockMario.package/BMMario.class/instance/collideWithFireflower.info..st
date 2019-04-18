collision
collideWithFireflower: aBMFireflower info: aBMCollisionEvent

	self statemachine transition: #eatFireflower.
	self changedState.