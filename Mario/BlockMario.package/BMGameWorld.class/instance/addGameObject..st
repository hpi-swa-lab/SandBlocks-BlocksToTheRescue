as yet unclassified
addGameObject: aBMGameObject

	self gameObjects add: aBMGameObject.
	aBMGameObject isPlayable
		ifTrue: [self physics addMovingObject: aBMGameObject]
		ifFalse: [self physics addObject: aBMGameObject]