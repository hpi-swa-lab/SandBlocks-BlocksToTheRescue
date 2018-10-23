as yet unclassified
handleParticlePlayerCollisions
	
	| sIParticlesTmp |
	sIParticlesTmp := self sIParticles.
		self sIParticles do: [ :particle |
			(self sIPlayer intersects: (self asRectangle: particle))
			ifTrue: [ self playerLoosesLife ]
	].