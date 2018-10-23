as yet unclassified
getSprite: aSpriteNamed

	^aSpriteNamed caseOf: {
		[ 'Player Sprite' ] -> [ self playerSprite ].
		[ 'Particle Sprite' ] -> [ self particleSprite ].
		[ 'Enemy Sprite' ] -> [ self enemySprite ].
	}
	otherwise: [ self error: 'Sprite not found' ].