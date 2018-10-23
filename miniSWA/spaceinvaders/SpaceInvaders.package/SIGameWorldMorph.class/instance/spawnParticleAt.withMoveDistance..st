as yet unclassified
spawnParticleAt: aPosition withMoveDistance: aMoveDistance
	
	| sIPartical |
	sIPartical := SIParticle newWithRessourceManager: self ressourceManager.
	self sIParticles add: sIPartical.
	self addMorph: sIPartical.
	sIPartical setSprite: 'Particle Sprite'.
	ressourceManager playSound: 'Shoot Sound'.
	sIPartical setRelativePosition: aPosition.
	sIPartical verticalMoveDistance: aMoveDistance.