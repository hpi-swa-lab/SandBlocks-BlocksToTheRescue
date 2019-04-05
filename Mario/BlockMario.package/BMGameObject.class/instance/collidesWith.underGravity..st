as yet unclassified
collidesWith: aBMGameObject underGravity: aPoint

	| oldBoundingBox moveBoundingBox intersectionRect |
	oldBoundingBox := self boundingBox.
	self moveWithGravity: aPoint.
	moveBoundingBox := oldBoundingBox topLeft corner: self boundingBox bottomRight.
	intersectionRect := aBMGameObject bounds intersect: moveBoundingBox.
	self moveWithGravity: aPoint negated.
	^ (self ~= aBMGameObject and: [moveBoundingBox intersects: aBMGameObject boundingBox])
		ifTrue: []
		ifFalse: [self velocity]