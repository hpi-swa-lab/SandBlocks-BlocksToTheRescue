as yet unclassified
handleParticleWallCollisions
	
	| sIWallsTmp sIParticlelsTmp |
	sIWallsTmp := self sIWalls.
	sIParticlelsTmp := self sIParticles.
	self sIWalls do: [ :wall |
		self sIParticles do: [ :particle |
			(wall intersects: (self asRectangle: particle)) ifTrue: [
				sIParticlelsTmp remove: particle ifAbsent: [ "do nothing" ].
				self removeMorph: particle.
				wall looseHealth ]
		]
	].
	self sIWalls: sIWallsTmp.
	self sIParticles: sIParticlelsTmp.