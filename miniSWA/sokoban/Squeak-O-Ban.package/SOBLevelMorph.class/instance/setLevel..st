as yet unclassified
setLevel: aLevel

	| size |
	size := aLevel size.
	self extent: (self extentFor: aLevel).
	1 to: size x do: 
		[:col | 1 to: size y do:
			[:row | self displayTileOf: aLevel at: col @ row]]
	