initialize-release
initializeFrom: entityConfigDict

	super initializeFrom: entityConfigDict.
	self
		stopTicking;
		speed: self defaultSpeed;
		movementVector: self defaultDirection.