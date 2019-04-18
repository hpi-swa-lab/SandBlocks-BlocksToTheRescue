accessing
rasterSize: aPoint
	| new |
	new := Matrix rows: aPoint y columns: aPoint x.
	new indicesDo: [:y :x | new at: y at: x put: (self raster at: y at: x ifInvalid: self newBlock)].
	self raster: new.
	self sizeChanged.