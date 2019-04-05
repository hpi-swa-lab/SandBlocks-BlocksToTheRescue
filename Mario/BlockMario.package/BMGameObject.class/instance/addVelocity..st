dnmphysics compatability
addVelocity: aPoint

	velocity := (velocity + aPoint).
	self checkVelocityLimits.