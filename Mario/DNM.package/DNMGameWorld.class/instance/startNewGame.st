initialization
startNewGame
	self 
		initializeBackground;
		initializeLevel;
		initializeUI;
		updateOffset;
		updateUI;
		grabKeyboard;
		startBackgroundMusic;
		openInWorld;
		gameStatus: #running.
