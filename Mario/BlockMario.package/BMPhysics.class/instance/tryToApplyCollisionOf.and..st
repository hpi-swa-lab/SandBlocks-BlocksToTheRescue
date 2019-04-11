simulation
tryToApplyCollisionOf: movingBMGameObject and: otherBMGameObject

	(movingBMGameObject willCollideWith: otherBMGameObject)		"check whether it still collides after other collisions"
		ifTrue: [
			(otherBMGameObject boundingBox sideNearestTo: movingBMGameObject boundingBox center) caseOf: {
				[#left] -> [movingBMGameObject collideFromLeftWith: otherBMGameObject. 
							otherBMGameObject collideFromRightWith: movingBMGameObject].
				[#right] -> [movingBMGameObject collideFromRightWith: otherBMGameObject. 
							otherBMGameObject collideFromLeftWith: movingBMGameObject].
				[#top] -> [movingBMGameObject collideFromTopWith: otherBMGameObject. 
							otherBMGameObject collideFromBottomWith: movingBMGameObject].
				[#bottom] -> [movingBMGameObject collideFromBottomWith: otherBMGameObject. 
								otherBMGameObject collideFromTopWith: movingBMGameObject]
		}]