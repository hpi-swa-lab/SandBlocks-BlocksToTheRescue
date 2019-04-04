public interface
isStandingOnSomething: aMovingObject
	"aMovingObject is standing on something if and only if aMovingObject has a y velocity of 0 and there is no other object that would intersect with aMovingObject if we were to move it down by a little bit."  
	|downwardsDirection|
	downwardsDirection := 0 @ 1.
	(aMovingObject velocity y isZero) ifFalse: [^false].
	collisionObjects do: [:aCollisionObject |
		(aCollisionObject ~= aMovingObject) 
			ifTrue: [
				(self testIf: aMovingObject bounds
					afterBeingTranslatedBy: downwardsDirection
					intersectWith: (aCollisionObject bounds))
				 		ifTrue: [^true]]].
	^false
	