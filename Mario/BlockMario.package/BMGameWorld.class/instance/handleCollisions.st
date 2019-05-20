collision handling
handleCollisions
	
	| collidees collisionPairs gravity toBeMovedIndices allGameObjects |
	collisionPairs := Set new.
	allGameObjects := self allGameObjects.
	collidees := allGameObjects veryDeepCopy.
	gravity := self gravity.
	toBeMovedIndices := OrderedCollection new.
	
	collidees doWithIndex: [ :collider :outerIndex | | hasCollided |
		hasCollided := #V2;BTRBooleanModel;3D;Constant2;Dictionary;14;1;((Dictionary new));False;7;1;false;;.
		collidees doWithIndex: [ :collidee :innerIndex |
			(collider collidesWith: collidee underGravity: gravity)
				ifTrue: [ hasCollided := #V2;BTRBooleanModel;3B;Constant2;Dictionary;14;1;((Dictionary new));True;6;1;true;;. 
						 collisionPairs add: (Set withAll: {innerIndex . outerIndex})]].
		hasCollided 
			ifFalse: [toBeMovedIndices add: outerIndex]].
	
	toBeMovedIndices do: [:each | (allGameObjects at: each) moveWithGravity: gravity].
	
	collisionPairs do: [ :each |
		| collisionPair |
		collisionPair := allGameObjects atAll: each asArray.
		collisionPair first collideWith: collisionPair second].