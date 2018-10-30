as yet unclassified
spawnParticleAt: aPosition withMoveDistance: aMoveDistance
	
	| sIParticle |
	sIParticle := SIParticle spawnMovingGameElementWithRessourceManager: (self ressourceManager) at: aPosition andSprite: 'Particle Sprite' andVerticalMoveDistance: aMoveDistance.
	
	self sIParticles add: sIParticle.
	self addMorph: sIParticle.