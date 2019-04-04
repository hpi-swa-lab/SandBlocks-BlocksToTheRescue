initialization
initialize
	"Because we may not use meta-programming (perform) for this, there is this large dictionary"
	gameElementsBySymbol := Dictionary new
		add: #coin -> [self coin];
		add: #diamond -> [self diamond];
		add: #fireBlock -> [self fireBlock];
		add: #fireFlower -> [self fireFlower];
		add: #fireball -> [self fireball];
		add: #groundBlock -> [self groundBlock];
		add: #gumba -> [self gumba];
		add: #heart -> [self heart];
		add: #lavaBlock -> [self lavaBlock];
		add: #leafyPlatform -> [self leafyPlatform];
		add: #mario -> [self mario];
		add: #mushroom -> [self mushroom];
		add: #rockyBlock -> [self rockyBlock];
		add: #rockyPlatform -> [self rockyPlatform];
		add: #stoneBlock -> [self stoneBlock];
		add: #target -> [self target];
		add: #turtle -> [self turtle];
		add: #cat -> [self cat];
		yourself.