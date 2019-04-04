initialization
initializeScore
	scoreModel := ValueHolder new contents: 0.
	scoreText := self newUIText: (scoreModel value contents asString) withDescription: #scoreDescription.
	self addMorph: (DNMImageRessourceManager singleton getRessource: #Coin).