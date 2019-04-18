accessing
raster

	^ raster ifNil: [raster := Matrix rows: 0 columns: 0]