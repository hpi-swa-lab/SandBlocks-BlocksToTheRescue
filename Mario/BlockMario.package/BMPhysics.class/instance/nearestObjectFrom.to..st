as yet unclassified
nearestObjectFrom: aCollection to: aBMGameObject

	^ aCollection detectMin: [:each | each distanceTo: aBMGameObject]