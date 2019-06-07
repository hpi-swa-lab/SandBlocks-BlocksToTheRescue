accessing
availableVariables

	^ self viewData
		at: #availableVariables
		ifAbsent: [{}]