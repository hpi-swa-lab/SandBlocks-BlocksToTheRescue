collision handling
handleCollisions
	
	| collidees collisionPairs gravity toBeMovedIndices allGameObjects |
	collisionPairs := Set new.
	allGameObjects := self allGameObjects.
	collidees := allGameObjects veryDeepCopy.
	gravity := self gravity.
	toBeMovedIndices := OrderedCollection new.
	
	collidees doWithIndex: [ :collider :index | | hasCollided |
		hasCollided := false.
		collidees do: [ :collidee |
			(collider collidesWith: collidee underGravity: gravity)
				ifTrue: [ hasCollided := true. 
						 collisionPairs add: (Set withAll: {collider . collidee})]].
		hasCollided 
			ifFalse: [toBeMovedIndices add: index]].
	
	toBeMovedIndices do: [:each | (allGameObjects at: each) moveWithGravity: gravity].
	
	collisionPairs do: [ :each |
		| collisionPair |
		collisionPair := each asArray.
		collisionPair first collideWith: collisionPair second].