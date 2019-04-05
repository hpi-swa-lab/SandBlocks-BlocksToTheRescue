public interface
updateMovingObjects
	"Updates all movingObjects that it consideres relevant with all other relevant objects. 
	Updating is considered to be: Apply gravity, friction, move as far as possible without colliding and send collision messages in case of collision."
	|relevantObjects|
	relevantObjects := collisionObjects select: [:collisionObject |
		self isRelevantCollisionObjectForVisibleSection: collisionObject].
	movingObjects do: [:aMovingObject |
		(self isRelevantMovingObjectForVisibleSection: aMovingObject)
			ifTrue: [self updateObject: aMovingObject withObjects: relevantObjects]]. 