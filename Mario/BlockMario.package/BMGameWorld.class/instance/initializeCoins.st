initialization
initializeCoins

	| coin mushroom |
	"coin := BMCoin new 
					relativePosition: 150 @ (self height - 150);
					yourself.
	self addGameObject: coin.
	self addMorph: coin."
	
	mushroom := BMMushroom new
							relativePosition: 50 @ (100);
							yourself.
	self addGameObject: mushroom.
	self addMorph: mushroom.