as yet unclassified
removeOutOfBoundsParticles

	| sIParticlesTmp |
	sIParticlesTmp := self sIParticles.
	self sIParticles do: [ :particle |
		((self isInBounds: particle topLeft) or: [self isInBounds: particle topRight] or: [self isInBounds: particle bottomRight] or: [self isInBounds: particle bottomLeft])
			ifFalse: [ sIParticlesTmp remove: particle ]
		].
	
	self sIParticles: sIParticlesTmp.