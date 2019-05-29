testing
shouldStepValue

	^ self mouseDownStepCount
		ifNotNil: [self mouseDownStepCount > self mousePressReadyCount]
		ifNil: [true]