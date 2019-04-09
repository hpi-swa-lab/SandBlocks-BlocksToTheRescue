movement
initJump

	self isJumping
		ifFalse: [
			self isJumping: true.
			self acceleration: self minAcceleration.
			self jump]
	