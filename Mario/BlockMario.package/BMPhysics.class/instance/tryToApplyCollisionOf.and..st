simulation
tryToApplyCollisionOf: movingBMGameObject and: otherBMGameObject

	(movingBMGameObject willCollideWith: otherBMGameObject)		"check whether it still collides after other collisions"
		ifTrue: [
			(otherBMGameObject boundingBox sideNearestTo: movingBMGameObject boundingBox center) caseOf: {
				[#left] -> [otherBMGameObject collideFromLeft: movingBMGameObject. otherBMGameObject collideFromRight: movingBMGameObject].
				[#right] -> [otherBMGameObject collideFromRight: movingBMGameObject. otherBMGameObject collideFromLeft: movingBMGameObject].
				[#top] -> [otherBMGameObject collideFromTop: movingBMGameObject. otherBMGameObject collideFromBottom: movingBMGameObject].
				[#bottom] -> [otherBMGameObject collideFromBottom: movingBMGameObject. otherBMGameObject collideFromTop: movingBMGameObject]
		}]