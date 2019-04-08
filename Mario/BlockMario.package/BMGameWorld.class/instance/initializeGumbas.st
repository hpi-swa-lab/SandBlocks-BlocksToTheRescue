initialization
initializeGumbas

	| gumba |
	gumba := BMGumba new 
					relativePosition: 100 @ (self height - 150);
					yourself.
	self addGameObject: gumba.
	self addMorph: gumba.