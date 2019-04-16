initialization
initializeGumbas

	| gumba |
	gumba := BMGumba new 
					relativePosition: #V2;BTRNumberModel;52;N1;SmallInteger;4;1;50;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;; @ #V2;BTRNumberModel;51;N1;SmallInteger;3;1;0;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;;;
					yourself.
	self addGameObject: gumba.
	self addMorph: gumba.