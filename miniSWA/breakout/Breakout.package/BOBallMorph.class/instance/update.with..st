updating
update: anAspect with: anObject

	anAspect caseOf: {
		[#position] -> [self repositionTo: anObject].
		[#size] -> [self resizeTo: anObject]}
		otherwise: nil.