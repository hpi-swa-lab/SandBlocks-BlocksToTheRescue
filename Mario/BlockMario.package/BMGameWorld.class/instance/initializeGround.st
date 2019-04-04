as yet unclassified
initializeGround

	#V2;BTRNumberModel;1D;Constant1;SmallInteger;3;1;0;; to: #V2;BTRNumberModel;21;Constant1;SmallFloat64;7;1;100.0;; do:
		[ :each | 
			| platform |
			platform := BMPlatform new.
			self addMorph:
				(platform
					x: platform width * each;
					y: self height - platform height)]