updating
update: anAspect with: anObject

	anAspect caseOf: {
		[#gameState] -> [self gameStateChanged: anObject].
		[#score] -> [self scoreChanged: anObject].
		[#lag] -> [Transcript showln: 'Lag: ', anObject, 'ms']}
		otherwise: [].