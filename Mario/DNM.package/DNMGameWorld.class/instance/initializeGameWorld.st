initialization
initializeGameWorld
	self physics: (DNMPhysics new gameWorld: self).
	self
		width: (World width/2);
		height: 650;
		offset: (0 @ 0);
		color: #V2;BTRColorModel;62;Constant2;UndefinedObject;5;1;nil;UndefinedObject;5;1;nil;Color;1E;1;(Color r: 0.0 g: 0.0 b: 0.0);;;
		levelSpecification: DNMLevelSpecification default;
		gameStatus: #initialized.