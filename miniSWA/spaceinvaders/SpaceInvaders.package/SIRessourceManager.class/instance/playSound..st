as yet unclassified
playSound: aSoundNamed

	aSoundNamed caseOf: {
		[ 'Shoot Sound' ] -> [ self shotSound play ].
		[ 'Death Enemy Sound' ] -> [ self deathEnemySound play ].
		[ 'Death Sound' ] -> [ self deathSound play ]
	}
	otherwise: [ self error: 'Sound not found' ].