initialization
initializePlatforms

	#V2;BTRNumberModel;51;N1;SmallInteger;3;1;0;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;; to: #V2;BTRNumberModel;52;N1;SmallInteger;4;1;50;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;; do:
		[ :each | 
			| platform |
			platform := BMPlatform new.
			self addMorph:
				(platform relativePosition: (platform width * each + 300) @ (self height atRandom)).
			self addGameObject: platform.]