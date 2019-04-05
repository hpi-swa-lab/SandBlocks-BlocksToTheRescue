initialization
initializeMario

	self mario: (BMMario new 
					relativePosition: 0 @ 0;
					yourself).
	self addGameObject: self mario.
	self addMorph: self mario.