accessing
endPosition

	^ self endDock
		ifNotNil: [:dock | self endStateMorph dockingPointPositionAt: dock]
		ifNil: [self endStateMorph center]