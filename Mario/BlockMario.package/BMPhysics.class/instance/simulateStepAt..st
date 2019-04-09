simulation
simulateStepAt: aPointOffset

	| relevantObjects |
	self applyGravity.
	relevantObjects := self staticGameObjects select: [:each | true].
	self movingGameObjects
		do: [:movingObject | 
			| possibleCollisions center |
			possibleCollisions := OrderedCollection new.
			center := movingObject boundingBox center.
			relevantObjects
				do: [:staticObject | (movingObject willCollideWith: staticObject)
						ifTrue: [possibleCollisions add: staticObject]].
			
			(foo ifNotNil: [foo do: [:each | each foo: false]]).
			foo := OrderedCollection new.
			self maxCollisionNumberAtSameTime
				timesRepeat: [| nearestObject | 
							possibleCollisions
								ifNotEmpty: [
									nearestObject := self nearestObjectFrom: possibleCollisions to: movingObject.
									possibleCollisions remove: nearestObject.
									(movingObject willCollideWith: nearestObject)
										ifTrue: [(nearestObject boundingBox sideNearestTo: center) caseOf: {
										[#left] -> [nearestObject collideFromLeft: movingObject].
										[#right] -> [nearestObject collideFromRight: movingObject].
										[#top] -> [nearestObject collideFromTop: movingObject].
										[#bottom] -> [nearestObject collideFromBottom: movingObject]
									}]
									.
							
							movingObject isPlayable
								ifTrue: [	foo add: (nearestObject foo: true)]]]].
	
	self movingGameObjects
		do: [:each | each move]