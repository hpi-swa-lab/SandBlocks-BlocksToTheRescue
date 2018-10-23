as yet unclassified
initialize 

	self shotSound: (SampledSound fromWaveFileNamed: 'laser.wav').
	self deathEnemySound: (SampledSound fromWaveFileNamed: 'death_enemy.wav').
	self deathSound: (SampledSound fromWaveFileNamed: 'death.wav').
	self playerSprite: ((Form fromFileNamed: 'player.png') scaledToSize: 40 @ 80).
	self particleSprite: ((Form fromFileNamed: 'particle.png') scaledToSize: 5 @ 30).
	self enemySprite: ((Form fromFileNamed: 'enemy.png') scaledToSize: 50 @ 50).
	