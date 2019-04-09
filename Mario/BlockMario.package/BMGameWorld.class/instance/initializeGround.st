initialization
initializeGround

	#V2;BTRNumberModel;51;N1;SmallInteger;3;1;0;SmallInteger;3;1;0;SmallInteger;5;1;100;SmallInteger;3;1;1;; to: #V2;BTRNumberModel;57;N1;SmallFloat64;7;1;100.0;SmallInteger;5;1;100;SmallInteger;5;1;200;SmallInteger;3;1;1;; do:
		[ :each | 
			| platform |
			platform := BMGround new.
			self addMorph:
				(platform relativePosition: (platform width * each) @ (self height - platform height)).
			self addGameObject: platform.]