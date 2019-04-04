instance-creation
coin
	^DNMCollectible new
		effect: (DNMEffectFactory singleton scoreBoostBy: 1);
		setImage: #Coin;
		soundSymbol: #coinSound;
		yourself