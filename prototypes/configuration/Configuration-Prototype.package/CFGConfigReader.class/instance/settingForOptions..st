as yet unclassified
settingForOptions: aCollection

	self options: (OrderedCollection newFrom: aCollection).
	^ self options
		ifEmpty: [nil]
		ifNotEmpty: [self visit: self configuration].