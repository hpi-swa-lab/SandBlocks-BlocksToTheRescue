as yet unclassified
deltaTo: aBMGameObject

	| point |
	point := aBMGameObject boundingBox pointNearestTo: self boundingBox center.
	^ point - (self boundingBox pointNearestTo: point) 