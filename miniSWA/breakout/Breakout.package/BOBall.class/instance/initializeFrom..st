initialize-release
initializeFrom: entityConfigDict

	super initializeFrom: entityConfigDict.
	self speedVector: (self defaultDirection * self defaultSpeed).