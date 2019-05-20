accessing
startPosition

	^ self startDock
		ifNotNil: [:dock | self startStateMorph dockingPointPositionAt: dock]
		ifNil: [self startStateMorph center]