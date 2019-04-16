initialization
initializeCoins

	| coin mushroom fireflower|
	"coin := BMCoin new 
					relativePosition: 150 @ (self height - 150);
					yourself.
	self addGameObject: coin.
	self addMorph: coin."
	
	mushroom := BMMushroom new
							relativePosition: #V2;BTRNumberModel;52;N1;SmallInteger;4;1;50;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;; @ #V2;BTRNumberModel;55;N1;SmallInteger;5;1;100;SmallInteger;5;1;100;SmallInteger;5;1;200;SmallInteger;3;1;1;;;
							yourself.
	self addGameObject: mushroom.
	self addMorph: mushroom.
	
	fireflower := BMFireFlower new
								relativePosition: #V2;BTRNumberModel;52;N1;SmallInteger;4;1;50;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;; @ #V2;BTRNumberModel;55;N1;SmallInteger;5;1;100;SmallInteger;5;1;100;SmallInteger;5;1;200;SmallInteger;3;1;1;;;
								yourself.
	self addGameObject: fireflower.
	self addMorph: fireflower.