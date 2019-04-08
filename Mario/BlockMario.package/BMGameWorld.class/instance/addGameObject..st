as yet unclassified
addGameObject: aBMGameObject

	self gameObjects add: aBMGameObject.
	aBMGameObject wantsGravity
		ifTrue: [self physics addMovingObject: aBMGameObject]
		ifFalse: [self physics addObject: aBMGameObject].
		
	aBMGameObject isNPC ifTrue: [self physics addObject: aBMGameObject]