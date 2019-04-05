collision handling
handleCollisions
	
	| collidees collisionPairs |
	collisionPairs := Set new.
	collidees := self allGameObjects copy.
	collidees do: [ :each | each wantsGravity ifTrue: [each moveWithGravity: self gravity]].
	collidees do: [ :collider |
		collidees do: [ :collidee |
			(collider collidesWith: collidee)
				ifTrue: [ collisionPairs add: (Set withAll: {collider . collidee})]]].
			
	collisionPairs do: [ :each |
		| collisionPair |
		collisionPair := each asArray.
		collisionPair first collideWith: collisionPair second].