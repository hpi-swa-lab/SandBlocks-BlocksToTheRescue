updating
updateOffset
	self offset: (self mario position x - (self width/2) @ 0).
	self background 
		position: (self offset);
		offset: (self offset negated).