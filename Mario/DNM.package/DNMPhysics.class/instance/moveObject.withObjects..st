collision
moveObject: aMovingObject withObjects: relevantObjects
	"Moves aMovingObject as far as it can go, without colliding with any object out of relevantObjects that it cannot traverse. Dispatches collision messages for the objects it traversed and the object that stopped its movement (if there is any)."
	|velocity delta nearest|
	velocity := aMovingObject velocity.
	nearest := nil.
	relevantObjects do: [:collisionObject |
		(collisionObject ~= aMovingObject)
			ifTrue: 
				[delta := aMovingObject maximumMovementDistanceWithoutCollidingWith: collisionObject.
				(delta r < velocity r) 
					ifTrue: 
						[(aMovingObject canTraverse: collisionObject) 
							ifFalse: 
								[nearest := collisionObject.
								velocity:= delta.
								aMovingObject velocity: velocity]
							ifTrue: [self dispatchCollisionOf: aMovingObject and: collisionObject]]]].
	aMovingObject move.
	nearest ifNotNil: [self dispatchCollisionOf: aMovingObject and: nearest].