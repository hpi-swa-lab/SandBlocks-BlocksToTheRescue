accessing
remove: anEffect from: aCollection after: aDuration
	aDuration isInfinite
		ifFalse: [self addAlarm: #remove:from: withArguments: {anEffect . aCollection} after: aDuration].