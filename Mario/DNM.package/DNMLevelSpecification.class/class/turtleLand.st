accessing
turtleLand

	^self new
		spawnOnPlatformPercentage: 90;
		grounds: {#stoneBlock};
		enemies: {#turtle . #turtle . #turtle . #turtle};
		items: {#coin . #diamond . #fireFlower};
		yourself