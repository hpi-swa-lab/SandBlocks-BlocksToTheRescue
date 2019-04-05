initialization
initializeMario

	self mario: (BMMario new 
					relativePosition: 0 @ 0;
					yourself).
	self addMorph: self mario.