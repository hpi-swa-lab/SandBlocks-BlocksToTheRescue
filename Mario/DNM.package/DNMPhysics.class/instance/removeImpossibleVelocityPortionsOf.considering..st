collision
removeImpossibleVelocityPortionsOf: aMovingObject considering: aGameElementCollection 
	"Removes the portions of its velocity that are blocked by another object from the collection"
	|bounds directions velocity|
	velocity := aMovingObject velocity.
	bounds := aMovingObject bounds.
	directions := {(0 @ 1) . (0 @ -1) . (1 @ 0) . (-1 @ 0)}.
	aGameElementCollection do: [:collisionObject |
		((aMovingObject canTraverse: collisionObject) or: [(aMovingObject bounds) intersects: (collisionObject bounds)]) 
		ifFalse: [
			directions do: [:aDirectionVector |
				(self testIf: bounds afterBeingTranslatedBy: aDirectionVector intersectWith: (collisionObject bounds))
				 	ifTrue: [
						"if intersect, we can't move in that direction. Thus we set this component of the velocity to zero"
						self removeVelocityPortionsOf: velocity 
							inDirection: aDirectionVector 
							ifChanged: [self dispatchCollisionOf: aMovingObject and: collisionObject]]]]].
	aMovingObject velocity: velocity.