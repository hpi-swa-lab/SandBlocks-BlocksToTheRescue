initialization
initializePlatforms

	#V2;BTRNumberModel;1D;Constant1;SmallInteger;3;1;0;; to: #V2;BTRNumberModel;1E;Constant1;SmallInteger;4;1;50;; do:
		[ :each | 
			| platform |
			platform := BMPlatform new.
			self addMorph:
				(platform relativePosition: (platform width * each + 300) @ (self height atRandom)).
			self addGameObject: platform.]