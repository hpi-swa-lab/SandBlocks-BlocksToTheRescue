as yet unclassified
handleParticleEnemyCollisions
	
	| sIEnemiesTmp sIParticlesTmp |
	sIEnemiesTmp := self sIEnemies.
	sIParticlesTmp := self sIParticles.
	self sIEnemies do: [ :enemy |
		self sIParticles do: [ :particle |
			(enemy intersects: (self asRectangle: particle)) ifTrue: 
			[ sIEnemiesTmp remove: enemy ifAbsent: [ "do nothing" ]. self removeMorph: enemy.
			  sIParticlesTmp remove: particle ifAbsent: [ "do nothing" ]. self removeMorph: particle.
			  self ressourceManager playSound: 'Death Enemy Sound'.
			  self increaseScore ]
		]
	].
	self sIEnemies: sIEnemiesTmp.
	self sIParticles: sIParticlesTmp.