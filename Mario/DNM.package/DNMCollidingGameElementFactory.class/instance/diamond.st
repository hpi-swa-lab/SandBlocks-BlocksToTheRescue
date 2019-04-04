instance-creation
diamond
	^DNMCollectible new
		effect: (DNMEffectFactory singleton scoreBoostBy: 10);
		setImage: #diamond;
		soundSymbol: #coinSound;
		yourself