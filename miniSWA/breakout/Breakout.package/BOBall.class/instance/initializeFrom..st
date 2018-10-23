initialize-release
initializeFrom: entityConfigDict

	super initializeFrom: entityConfigDict.
	self
		stopTicking;
		speedVector: (self defaultDirection * self defaultSpeed).