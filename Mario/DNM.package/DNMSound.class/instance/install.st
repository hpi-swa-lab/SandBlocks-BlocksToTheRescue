initialization
install
	soundsBySymbol 
		add: #coinSound -> (self aiffSoundFromFilename: 'coin.aiff');
		add: #gumbaSound -> (self aiffSoundFromFilename: 'gumba.aiff');
		add: #gameOverSound -> (self aiffSoundFromFilename: 'game_over.aiff');
		add: #backgroundMusic -> (RepeatingSound repeatForever: (self aiffSoundFromFilename: 'mario.aiff')).