as yet unclassified
setLevel: aLevel

	self level: aLevel.
	self level addDependent: self.
	self calculateExtent.
	1 to: self levelSize x do: 
		[:col | 1 to: self levelSize y do:
			[:row | self displayTileAt: col @ row]]
	