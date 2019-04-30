accessing
endPosition

	^ self endDock
		ifNotNil: [:dock | self endStateMorph dockingPointAt: dock]
		ifNil: [self endStateMorph center]