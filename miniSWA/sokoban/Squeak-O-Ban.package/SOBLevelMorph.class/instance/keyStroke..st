event handling
keyStroke: aKeyEvent

	aKeyEvent keyCharacter caseOf: {
		[ Character arrowDown ] -> [ self level moveDown ].
		[ Character arrowUp ] -> [  self level moveUp ].
		[ Character arrowLeft ] -> [ self level moveLeft ].
		[ Character arrowRight ] -> [  self level moveRight ].
	} otherwise: []