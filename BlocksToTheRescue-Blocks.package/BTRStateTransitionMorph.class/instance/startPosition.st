accessing
startPosition

	^ self startDock
		ifNotNil: [:dock | self startStateMorph dockingPointAt: dock]
		ifNil: [self startStateMorph center]