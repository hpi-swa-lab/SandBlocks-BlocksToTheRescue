simulation
simulateStep

	self applyGravity.
	
	self movingGameObjects do: [:movingObject | | possibleCollisions center |
		possibleCollisions := OrderedCollection new.
		center := movingObject boundingBox center.
		self staticGameObjects 
			do:[:staticObject | (movingObject willCollideWith: staticObject) 
				ifTrue: [possibleCollisions add:  staticObject]].
		possibleCollisions notEmpty
			ifTrue: [ | nearestObject |
				nearestObject := self nearestObjectFrom: possibleCollisions to: movingObject.
				movingObject isPlayable ifTrue: [Transcript showln: (nearestObject boundingBox sideNearestTo: center)].
				(nearestObject boundingBox sideNearestTo: center) caseOf: {
					[#left] -> [nearestObject collideFromLeft: movingObject].
					[#right] -> [nearestObject collideFromRight: movingObject].
					[#top] -> [nearestObject collideFromTop: movingObject].
					[#bottom] -> [nearestObject collideFromBottom: movingObject]
				}.
				movingObject isPlayable
					ifTrue: [
						(foo notNil and: [foo ~= nearestObject]) ifTrue: [foo foo: false].
						foo := nearestObject foo: true]]
				].
		
	self movingGameObjects do: [:each | each move]
