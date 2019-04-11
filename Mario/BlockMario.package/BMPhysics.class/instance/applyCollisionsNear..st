simulation
applyCollisionsNear: aPoint

	| relevantObjects |
	relevantObjects := self gameObjectsFrom: self staticGameObjects , self movingGameObjects near: aPoint.
	
	self movingGameObjects
		do: [:movingObject | | possibleCollisions |
			possibleCollisions := self possibleCollisionsOf: relevantObjects with: movingObject.
			self let: movingObject collideWith: possibleCollisions].