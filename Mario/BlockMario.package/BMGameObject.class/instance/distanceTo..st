as yet unclassified
distanceTo: aBMGameObject

	| vector |
	vector := aBMGameObject boundingBox center - self boundingBox center.
	vector := vector * vector.
	^ (vector x + vector y) sqrt