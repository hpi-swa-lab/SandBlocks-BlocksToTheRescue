testing
willCollideWith: aBMGameObject

	^ self ~= aBMGameObject and: [self moveBoundingBox intersects: aBMGameObject boundingBox]