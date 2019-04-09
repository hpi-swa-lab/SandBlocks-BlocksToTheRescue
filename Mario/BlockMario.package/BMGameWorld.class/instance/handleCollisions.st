collision handling
handleCollisions
	
	| collidees collisionPairs gravity toBeMovedIndices allGameObjects |
	collisionPairs := Set new.
	allGameObjects := self allGameObjects.
	collidees := allGameObjects veryDeepCopy.
	gravity := self gravity.
	toBeMovedIndices := OrderedCollection new.
	
	collidees doWithIndex: [ :collider :outerIndex | | hasCollided |
		hasCollided := false.
		collidees doWithIndex: [ :collidee :innerIndex |
			(collider collidesWith: collidee underGravity: gravity)
				ifTrue: [ hasCollided := true. 
						 collisionPairs add: (Set withAll: {innerIndex . outerIndex})]].
		hasCollided 
			ifFalse: [toBeMovedIndices add: outerIndex]].
	
	toBeMovedIndices do: [:each | (allGameObjects at: each) moveWithGravity: gravity].
	
	collisionPairs do: [ :each |
		| collisionPair |
		collisionPair := allGameObjects atAll: each asArray.
		collisionPair first collideWith: collisionPair second].