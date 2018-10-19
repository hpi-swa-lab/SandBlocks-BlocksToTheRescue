as yet unclassified
handleParticalWallCollisions
	
	| sIWallsTmp sIParticalsTmp |
	sIWallsTmp := self sIWalls.
	sIParticalsTmp := self sIParticals.
	self sIWalls do: [ :wall |
		self sIParticals do: [ :partical |
			(wall intersects: (self asRectangle: partical)) ifTrue: [
			  sIParticalsTmp remove: partical ifAbsent: [ "do nothing" ].
			self removeMorph: partical.
			wall looseHealth]
		]
	].
	self sIWalls: sIWallsTmp.
	self sIParticals: sIParticalsTmp.