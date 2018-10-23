as yet unclassified
handleParticlePlayerCollisions

		self sIParticles do: [ :particle |
			(self sIPlayer intersects: (self asRectangle: particle))
			ifTrue: [ self playerLoosesLife ]
	].