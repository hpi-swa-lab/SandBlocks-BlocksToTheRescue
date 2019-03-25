accessing
selector

	^ self properties at: #selector ifAbsent: [nil]