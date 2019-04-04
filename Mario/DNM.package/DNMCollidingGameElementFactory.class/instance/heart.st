instance-creation
heart
	^DNMCollectible new
		effect: (DNMEffectFactory singleton healthBoostBy: 0.2);
		setImage: #heart;
		"soundSymbol: #coinSound;"
		yourself