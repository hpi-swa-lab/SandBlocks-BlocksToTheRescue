as yet unclassified
keyStroke: aKeyEvent

	aKeyEvent keyCharacter caseOf: {
		[ Character arrowLeft ] -> [ self sIPlayer moveToTheLeft ].
		[ Character arrowRight ] -> [ self sIPlayer moveToTheRight ].
		[ Character arrowUp ] -> [ self spawnPartical ].
	} 
	otherwise: [ "do nothing when we get a different keystorke" ].