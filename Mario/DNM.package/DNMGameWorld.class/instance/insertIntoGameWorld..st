GameMorphCreation
insertIntoGameWorld: aGameObject 
	aGameObject
		owningGameWorld: self;
		physics: self physics.
	self addMorph: aGameObject.
	^aGameObject