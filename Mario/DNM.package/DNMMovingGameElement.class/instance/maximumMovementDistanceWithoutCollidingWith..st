movement
maximumMovementDistanceWithoutCollidingWith: aGameElement	
	"Returns a velocity at which I can move, without intersecting with the other object. The returned velocity is smaller (or equal) than my original velocity.  
	If they already intersect, the returned velocity will move that object out of self. In this case, the return value might be larger than itsVelocity."
	|nearest deltaVector maxVelocity intersectionPoint|
	nearest := self bounds pointNearestTo: aGameElement center.
	maxVelocity := self velocity.
	(self bounds intersects: aGameElement bounds) 
		ifTrue: [^((aGameElement bounds pointNearestTo: (nearest)) - nearest)].
	aGameElement sides do: [:aSide |
		deltaVector := LineSegment from: nearest to: (nearest + maxVelocity).
		(aGameElement point: (deltaVector end) onInsideOf: aSide)
			ifTrue: [  
				intersectionPoint := aSide intersectionWith: deltaVector. 
				intersectionPoint ifNotNil: [
					((intersectionPoint = aSide end) or: (intersectionPoint = aSide start)) 
						ifFalse: [maxVelocity := (intersectionPoint - nearest)]]]].
	^maxVelocity