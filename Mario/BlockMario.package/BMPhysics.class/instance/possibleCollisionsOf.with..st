as yet unclassified
possibleCollisionsOf: aCollection with: aBMObject

	^ aCollection select: [:each | aBMObject willCollideWith: each]