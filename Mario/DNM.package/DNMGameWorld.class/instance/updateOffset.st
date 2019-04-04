updating
updateOffset
	self offset: (self mario position x - (self width/2) @ #V2;BTRNumberModel;1D;Constant1;SmallInteger;3;1;0;;).
	self background 
		position: (self offset);
		offset: (self offset negated).