initialization
initializeGumbas

	| gumba |
	gumba := BMGumba new 
					relativePosition: 100 @ 100;
					yourself.
	self addGameObject: gumba.
	self addMorph: gumba.