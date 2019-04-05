as yet unclassified
moveWithGravity: aPoint

	self wantsGravity ifFalse: [^ self].
	self relativePosition: self relativePosition - self velocity.
	self velocity: aPoint negated.