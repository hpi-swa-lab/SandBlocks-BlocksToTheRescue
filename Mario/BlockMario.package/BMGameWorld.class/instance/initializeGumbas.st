initialization
initializeGumbas

	| gumba |
	gumba := BMGumba new 
					relativePosition: 50 @ 0;
					yourself.
	self addGameObject: gumba.
	self addMorph: gumba.