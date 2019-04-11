as yet unclassified
addGameObject: aBMGameObject

	self gameObjects add: aBMGameObject.
	aBMGameObject isNPC ifTrue: [self npcs add: aBMGameObject].
	aBMGameObject wantsGravity
		ifTrue: [self physics addMovingObject: aBMGameObject]
		ifFalse: [self physics addStaticObject: aBMGameObject].