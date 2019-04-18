as yet unclassified
sizeChanged
	
	self extent: self rasterSize * self blockSize.
	self removeAllMorphs.
	self addAllMorphs: self raster asArray.
	self raster withIndicesDo: [:block :y :x | block position: self position + (x@y - (1@1) * self blockSize)].