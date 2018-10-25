updating
update: anAspect with: anObject

	anAspect caseOf: {
		[#position] -> [self repositionTo: anObject].
		[#extent] -> [self resizeTo: anObject]}
		otherwise: nil.