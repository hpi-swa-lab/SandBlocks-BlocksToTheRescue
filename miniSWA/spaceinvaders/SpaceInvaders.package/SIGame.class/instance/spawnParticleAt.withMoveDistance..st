as yet unclassified
spawnParticleAt: aPosition withMoveDistance: aMoveDistance
	
	| sIParticle |
	sIParticle := SIParticle spawnAt: aPosition withSprite: (self ressourceManager getSprite: 'Particle Sprite') andVerticalMoveDistance: aMoveDistance.
	
	self ressourceManager playSound: 'Shoot Sound'.
	self sIParticles add: sIParticle.
	self addMorph: sIParticle.