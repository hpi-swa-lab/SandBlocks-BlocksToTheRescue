initialization
initializeGround

	#V2;BTRNumberModel;1D;Constant1;SmallInteger;3;1;0;; to: #V2;BTRNumberModel;21;Constant1;SmallFloat64;7;1;100.0;; do:
		[ :each | 
			| platform |
			platform := BMPlatform new.
			self addGameObject: platform.
			self addMorph:
				(platform relativePosition: (platform width * each) @ (self height - platform height))]