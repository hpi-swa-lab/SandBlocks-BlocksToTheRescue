initialization
initializeGameWorld
	self physics: (DNMPhysics new gameWorld: self).
	self
		width: (World width/2);
		height: 650;
		offset: (0 @ 0);
		color: Color black;
		levelSpecification: DNMLevelSpecification default;
		gameStatus: #initialized.