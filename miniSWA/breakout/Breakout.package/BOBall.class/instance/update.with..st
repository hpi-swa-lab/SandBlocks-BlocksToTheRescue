updating
update: anAspect with: anObject
	anAspect
		caseOf: {
			[#paddleBinding] -> [self updateFromPaddle: anObject]}
		otherwise: nil.