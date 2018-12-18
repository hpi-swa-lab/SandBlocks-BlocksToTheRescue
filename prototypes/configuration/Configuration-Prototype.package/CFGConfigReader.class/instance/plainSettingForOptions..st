settings reading
plainSettingForOptions: aCollection

	self options: (OrderedCollection newFrom: aCollection).
	^ self options
		ifEmpty: [nil]
		ifNotEmpty: [self visit: self configuration].