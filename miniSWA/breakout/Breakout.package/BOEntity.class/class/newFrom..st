instance creation
newFrom: entityConfigDict

	^ self basicNew
		initializeFrom: entityConfigDict;
		yourself