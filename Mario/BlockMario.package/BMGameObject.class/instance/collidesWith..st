as yet unclassified
collidesWith: aBMGameObject

	
	^ self ~= aBMGameObject and: [self boundingBox intersects: aBMGameObject boundingBox]