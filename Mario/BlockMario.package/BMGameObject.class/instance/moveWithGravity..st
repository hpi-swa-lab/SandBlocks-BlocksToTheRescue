as yet unclassified
moveWithGravity: aPoint

	self relativePosition: self relativePosition - self velocity.
	self velocity: aPoint negated.