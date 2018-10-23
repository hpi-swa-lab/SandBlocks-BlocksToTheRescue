updating
update: anAspect with: anObject

	self perform: (anAspect caseOf: {
		[#position] -> [#repositionTo:].
		[#size] -> [#resizeTo:].
		[#showSpawningBall] -> [#showSpawningBall:]})
		with: anObject.