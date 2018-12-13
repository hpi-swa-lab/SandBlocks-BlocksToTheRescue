initialize-release
setLevel: aLevel

	self level: aLevel.
	self level addDependent: self.
	self 
		calculateExtent;
		displayTiles.
	
	