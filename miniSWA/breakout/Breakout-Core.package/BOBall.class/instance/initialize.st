initialize-release
initialize

	self radius: self defaultRadius.
	super initialize.
	self
		stopTicking;
		speed: self defaultSpeed;
		movementVector: self defaultDirection.