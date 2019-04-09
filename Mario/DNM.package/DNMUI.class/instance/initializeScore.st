initialization
initializeScore
	scoreModel := ValueHolder new contents: #V2;BTRNumberModel;51;N1;SmallInteger;3;1;0;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;;.
	scoreText := self newUIText: (scoreModel value contents asString) withDescription: #scoreDescription.
	self addMorph: (DNMImageRessourceManager singleton getRessource: #Coin).