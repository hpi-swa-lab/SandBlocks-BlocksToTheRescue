*BlocksToTheRescue-Core
aspectRatio

	^ self height isZero
		ifTrue: [0]
		ifFalse: [self width / self height]