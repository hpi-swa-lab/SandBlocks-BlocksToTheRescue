collision
updateObject: aMovingObject withObjects: relevantObjects

	self 
		applyGravity: aMovingObject;
		applyFriction: aMovingObject;
		removeImpossibleVelocityPortionsOf: aMovingObject considering: relevantObjects;
		moveObject: aMovingObject withObjects: relevantObjects.