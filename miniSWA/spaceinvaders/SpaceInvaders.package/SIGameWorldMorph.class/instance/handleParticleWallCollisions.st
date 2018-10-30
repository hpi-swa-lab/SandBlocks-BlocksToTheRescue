as yet unclassified
handleParticleWallCollisions
	
	| sIWallsTmp sIParticlelsTmp |
	sIWallsTmp := self sIWalls.
	sIParticlelsTmp := self sIParticles.
	self sIWalls do: [ :wall |
		self sIParticles do: [ :particle |
			(wall intersects: (self asRectangle: particle)) ifTrue: [
				"We have to check the pixel directly under us"
				((wall image pixelValueAt: (((particle bottomLeft) - wall topLeft) - (1 @ 1))) = 0) ifFalse: [
					sIParticlelsTmp remove: particle ifAbsent: [ "do nothing" ].
					self removeMorph: particle.
					wall image looseHealthAt: particle left - wall left @ (particle bottom - wall top).
					wall changed ]]
		]
	].
	self sIWalls: sIWallsTmp.
	self sIParticles: sIParticlelsTmp.