accessing
default

	^self new
		width: 20000;
		maxPlatformLength: 5;
		platformDistance: 100;
		spawnOnFloorPercentage: 10;
		spawnOnPlatformPercentage: 75;
		grounds: {#groundBlock};
		platforms: {#leafyPlatform};
		enemies: {#gumba . #gumba . #turtle . #cat};
		items: {#coin . #coin . #coin . #diamond . #fireFlower . #fireFlower . #fireBlock . #mushroom . #heart};
		yourself