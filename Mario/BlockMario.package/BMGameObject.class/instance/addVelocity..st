as yet unclassified
addVelocity: aPoint

	self velocity: self velocity + aPoint.
	self checkVelocityLimits.