initialization
initializeGameWorld
	self physics: (DNMPhysics new gameWorld: self).
	self
		width: (World width/2);
		height: 650;
		offset: (0 @ 0);
		color: #V2;BTRColorModel;55;Constant2;Dictionary;14;1;((Dictionary new));Color;1E;1;(Color r: 0.0 g: 0.0 b: 0.0);;;
		levelSpecification: DNMLevelSpecification default;
		gameStatus: #initialized.