initialization
initializeScore
	scoreModel := ValueHolder new contents: #V2;BTRNumberModel;1D;Constant1;SmallInteger;3;1;0;;.
	scoreText := self newUIText: (scoreModel value contents asString) withDescription: #scoreDescription.
	self addMorph: (DNMImageRessourceManager singleton getRessource: #Coin).