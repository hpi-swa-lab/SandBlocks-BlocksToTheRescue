accessing
lavaLand
	^self new
		maxPlatformLength: 3;
		platformDistance: 150;
		spawnOnFloorPercentage: 0;
		spawnOnPlatformPercentage: 60;
		grounds: {#rockyBlock . #lavaBlock . #lavaBlock};
		platforms: {#rockyPlatform};
		enemies: {#gumba . #turtle};
		items: {#coin . #coin . #diamond . #fireFlower .}