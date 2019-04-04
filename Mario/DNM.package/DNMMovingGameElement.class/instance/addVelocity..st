movement
addVelocity: aVelocity
	velocity := (velocity + aVelocity).
	self checkVelocityLimits.