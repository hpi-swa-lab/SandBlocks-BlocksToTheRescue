as yet unclassified
spawnMovingGameElementWithRessourceManager: aRessourceManager at: aPosition andSprite: aSprite andVerticalMoveDistance: aMoveDistance

	| sIParticle |
	sIParticle := (self spawnMovingGameElementWithRessourceManager: aRessourceManager at: aPosition andSprite: aSprite) verticalMoveDistance: aMoveDistance.
	sIParticle ressourceManager playSound: 'Shoot Sound'.
	
	^sIParticle
	
	

 