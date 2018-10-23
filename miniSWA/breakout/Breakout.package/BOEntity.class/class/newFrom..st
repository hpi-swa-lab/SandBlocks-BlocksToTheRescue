instance creation
newFrom: configCollection

	^ self basicNew
		initializeFrom: (configCollection isDictionary
			ifTrue: [configCollection]
			ifFalse: [IdentityDictionary withAll: configCollection]);
		yourself