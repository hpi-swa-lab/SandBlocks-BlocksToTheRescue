updating
applyViewData: aDictionary

	aDictionary
		at: #startDock ifPresent: [:dock | self startDock: dock];
		at: #endDock ifPresent: [:dock | self endDock: dock].
	self updateVertices.